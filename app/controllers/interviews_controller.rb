class InterviewsController < ApplicationController

  def index
    @interviews = Interview.where(user_id: @user.id)
    render json: @interviews
  end

  def show
    @interview = Interview.find(params[:id])
    render json: @interview
  end

  def create
    @interview = Interview.create(
      date: params[:date],
      time: params[:time],
      location: params[:location],
      application_id: @application.id
    )
  end

  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy
    render json: 'Interview has been deleted.'
  end
end
