class UsersController < ApplicationController

  skip_before_action :authenticate, only: [:create, :login]

  def index
    @users = User.all
    render json: @user, include: [:appliclations, :reccomendations]
  end

  def profile
    render json: @user, include: [:applications, :reccomendations]
  end

  def show
    @user = User.find(params[:id])
    render json: @user, include: [:applications, :reccomendations]
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      @token = JWT.encode({ user_id: @user.id }, Rails.application.secrets.secret_key_base[0])
      render json: { token: @token, user: @user }, status: :ok
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      @token = JWT.encode({ user_id: @user.id }, Rails.application.secrets.secret_key_base[0])
      render json: { token: @token, user: @user }, status: :ok
    else
      render json: { message: 'Invalid username or password. Try again!'}
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password
    )
  end

end
