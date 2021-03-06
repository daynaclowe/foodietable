class ReservationsController < ApplicationController
  before_filter :load_restaurant
  def index 
  	@reservations = Reservation.all
    @restaurants = Restaurant.all
  end

  def show

  	@reservation = Reservation.find(params[:id])
  end

  def new 		#user to create a reservation using the form
  	@reservation = Reservation.new
    @restaurants = Restaurant.all
  end

  def edit 		#make changes to the reservation
  	@reservation = Reservation.find(params[:id])
  end

  def create 	#add the new reservation database
  	@reservation = @restaurant.reservations.build(reservation_params)
   @restaurants = Restaurant.all
  	if @reservation.save
  		redirect_to restaurant_reservation_path(@restaurant,@reservation) ## go to the confirmation page
  	else
  		render :new
  	end
  end
  

  def update 	#saving the reservation
  	@reservation = Reservation.find(params[:id])
  	if @reservation.update_attributes(reservation_params)
  		redirect_to restaurant_reservation_path(@restaurant,@reservation)
  	else
  		render :edit
  	end
  end

  def destroy	#deleting the reservation
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  	redirect_to restaurants_path(@restaurants)
  end

  private
  def reservation_params
  	params.require(:reservation).permit(:name, :user_phone, :email_address, :size_of_party, :comments_and_requests,:comments,:restaurant_id, :res_time)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurants = Restaurant.all

  end

end



