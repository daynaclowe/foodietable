class AddFieldsToReservation < ActiveRecord::Migration
  def change
	  	add_column(:reservations, :name, :string)
	  	add_column(:reservations, :email_address, :string)
  end
end
