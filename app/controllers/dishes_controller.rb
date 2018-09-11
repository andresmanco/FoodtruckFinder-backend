class DishesController < ApplicationController
  skip_before_action :authenticate, only: [:index]
  def index
    render json: Dish.all
  end

  def show
    render json: my_current_user.dishes
  end

  def update
    
    params[:dishes].each do |dish|
      if dish[:id]
        Dish.find(dish[:id]).update(name: dish[:name], price: dish[:price], pic: dish[:pic], description: dish[:description])
      else
        Dish.create(name: dish[:name], price: dish[:price], pic: dish[:pic], description: dish[:description], truck_id: my_current_user.id)
      end
    end
    render json: my_current_user.dishes
  end

  def destroy
    render json: Dish.find(params[:id]).destroy
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :price, :pic, :description, :truck_id)
  end
end
