class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create

    @restaurant = Restaurant.new(restaurant_params)
    @restaurant[:phone_number] = restaurant_params[:phone_number].gsub(/[^0-9a-z ]/i, '')

    @restaurant.save
    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to products_path
  end

  private
  def restaurant_params
  	params.require(:restaurant).permit(:name, :password, :password_confirmation, :address, :capacity, :bio, :phone_number)
  end
 
end