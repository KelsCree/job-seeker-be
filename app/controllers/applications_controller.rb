class ApplicationsController < ApplicationController

  def index
    @applications = Application.where(user_id: @user.id)
    render json: @Applications, include: :interviews
  end

  def show
    @application = Application.find(params[:id])
    render json: @application, include: :interviews
  end

  def create
    @application = Application.create(
      company: params[:company],
      position: params[:position],
      description: params[:description],
      url: params[:url],
      user_id: @user.id
    )
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    render json: 'Application has been deleted.'
  end
end
