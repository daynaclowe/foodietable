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
  		redirect_to foodies_path, notice: "You are now a foodie!"
  	else
  		render "new"
  	end
  end

  def edit
  	@foodie = Foodie.find(params[:id])
  end

  def update
    @foodie = Foodie.find(params[:id])
    if @foodie.update_attributes(foodie_params)
      redirect_to foody_path(@foodie)
    else
      render :edit
    end
  end

  def upload
    uploaded_io = params[:current_user][:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end

  private
  def foodie_params
  	params.require(:foodie).permit(:name, :email, :password, :password_confirmation)
  end

end
