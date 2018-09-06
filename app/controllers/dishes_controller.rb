class DishesController < ApplicationController
  def index
    render json: Dish.all
  end
end
