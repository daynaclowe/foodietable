class ReviewsController < ApplicationController
	before_filter :load_product
	before_filter :ensure_logged_in, only: [:create, :destroy]

	def index 
		@reviews = Review.all
	end

	def show
		@review = Review.find(params[:id])
	end

	def edit 
		@review = Review.find(params[:id])
	end

	def create
		@review = @foodie.reviews.build(review_params)
		# @review.user = current_user

		if @review.save
			redirect_to foody_path, notice: 'Review created successfully'
		else
			render 'foodies/show'
		end
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
	end

	def update
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
	params.require(:review).permit(:comment, :foodie_id)
end

def load_foody
	@foody = Foody.find(params[:foodie_id])
end

