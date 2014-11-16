class ReviewsController < ApplicationController
	before_filter :load_restaurant
	# before_filter :ensure_logged_in, only: [:create, :destroy]

	def index 
		@reviews = Review.all
	end

	def show
		@review = Review.find(params[:id])

	end

	def create
		@review = @restaurant.reviews.build(review_params) 
		# We have to use @restaurant in order to connect review and specific restaurant.
		# @review.user = current_user
		if @review.save
			flash[:notice] = "Review created successfully!"
			redirect_to restaurant_path(@restaurant) #, notice:'Review created successfully'
		else
			redirect_to restaurants_path
		end
	end

	def destroy
		@review = @restaurant.reviews.find(params[:id])
		# @review = Review.find(params[:id]
		@review.destroy
		redirect_to restaurant_path(@restaurant) 
	end






	def edit 
		@review = Review.find(params[:id])
	end

	def update
			@review = @restaurant.reviews.find(params[:id])
			if @review.update_attributes(review_params)
				redirect_to restaurant_path(@restaurant) 
			# To defin the specific product 
		else
			render :edit
		end
	end
end

private
def review_params
	params.require(:review).permit(:comments, :title,:rating,:foodie_id)
end

def load_restaurant
	@restaurant = Restaurant.find(params[:restaurant_id])
end

# We use load_restaurant in order to find specific restaurant.

