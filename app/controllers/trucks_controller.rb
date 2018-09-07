class TrucksController < ApplicationController
  def index
    render json: Truck.all
  end

  def show
    render json: Truck.find(params[:id])
  end

  def create
    render json: Truck.create(truck_params)
  end

  def updated
    Truck.find(params[:id]).update(truck_params)
    render json: Truck.find(params[:id])
  end

  def destroy
    render json: Truck.find(params[:id]).destroy
  end

  private

  def truck_params
    params.require(:truck).permit(:name, :account_name, :password, :food_type, :description, :pic, :location)
  end
end
