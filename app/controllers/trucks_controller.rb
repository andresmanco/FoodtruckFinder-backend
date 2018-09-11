class TrucksController < ApplicationController
  skip_before_action :authenticate, only: [:index, :create]
  def index

    render json: Truck.all
  end

  def show
    render json: {account_name: my_current_user.account_name, name: my_current_user.name}
  end

  def create
    render json: Truck.create(truck_params)
  end

  def update
    my_current_user.update(truck_params)
    render json: my_current_user
  end

  def destroy
    render json: Truck.find(params[:id]).destroy
  end

  private

  def truck_params
    params.require(:truck).permit(:name, :account_name, :password, :food_type, :description, :pic, :location)
  end
end
