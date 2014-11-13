class FoodiesController < ApplicationController
  def index
  	@foodies = Foodie.all
  end

  def show
  	@foodies = Foodie.find(params[:id])
  end

  def new
  	@foodie = Foodie.new
  end

  def create
  	@foodie = Foodie.new(foodie_params)
  	if @foodie.save
  		redirect_to foodies_url, notice: "You are now a foodie!"
  	else
  		render "new"
  	end
  end

  def edit
  	@foodie = Foodie.new(foodie_params[:id])
  end

  private
  def foodie_params
  	params.require(:foodie).permit(:email, :password, :password_confirmation)
  end

end
