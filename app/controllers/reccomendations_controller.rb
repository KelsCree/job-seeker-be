class ReccomendationsController < ApplicationController

  def index
    @reccomendations = Reccomendation.where(user_id: @user.id)
    render json: @reccomendations
  end

  def show
    @reccomendation = Reccomendation.find(params[:id])
    render json: @reccomendation
  end

  def create
    @reccomendation = Reccomendation.create(
      name: params[:name],
      email: params[:email],
      number: params[:number],
      relationship: params[:relationship],
      user_id: @user.id
    )
  end

  def destroy
    @reccomendation = Reccomendation.find(params[:id])
    @reccomendation.destroy
    render json: 'Reccomendation has been deleted.'
  end
  
end