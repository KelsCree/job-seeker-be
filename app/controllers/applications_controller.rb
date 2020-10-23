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
      user_id: @user.id,
      company: params[:company],
      position: params[:position],
      status: params[:status],
      url: params[:url],
      description: params[:description]
    )
    render json: @application
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    render json: 'Application has been deleted.'
  end
end
