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

  def edit
  	@foodie = Foodie.new(foodie_params[:id])
  end
end
