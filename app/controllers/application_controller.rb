class ApplicationController < ActionController::API

  before_action :authenticate

  def logged_in?
    !!authenticate
  end

  def authenticate
    auth_header = request.headers['Authorization']
    if !auth_header
      render json: { user: {} }
    else
      token = auth_header.split(' ')[1]
      begin
        decoded_token = JWT.decode(token, Rails.application.secrets.secret_key_base[0])
        payload = decoded_token.first
        user_id = payload['user_id']
        @user = User.find(user_id)
      rescue JWT::DecodeError
        # render json: { message: 'Invalid JWT' }, status: :forbidden
        render json: { user: {} }
      end
    end
  end
end
