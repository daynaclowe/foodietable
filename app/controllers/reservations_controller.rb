class ReservationsController < ApplicationController
  def index 
  	@reservations = Reservation.all
  end

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def new 		#user to make a reservation
  	@reservation = Reservation.new
  end

  def edit 		#make changes to the reservation
  	@reservation = Reservation.find(params[:id])
  end

  def create 	#create a reservation
  	@reservation = Reservation.new(reservation_params)

  	if @reservation.save
  		redirect_to reservation_path(@reservation) ## go to the confirmation page
  	else
  		render :new
  	end
  end

  def update 	#saving the reservation
  	@reservation = Reservation.find(params[:id])

  	if @reservation.update_attributes(reservation_params)
  		redirect_to reservation_path(@reservation)
  	else
  		render :edit
  	end
  end

  def destroy	#deleting the reservation
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  	redirect_to reservations_path
  end

  private
  def reservation_params
  	params.require(:reservation).permit(:name, :user_phone, :email_address, :size_of_party, :comments_and_requests)
  end
end
