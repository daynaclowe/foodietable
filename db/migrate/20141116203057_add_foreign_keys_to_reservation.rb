class AddForeignKeysToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :restaurant_id, :integer
  	add_column :reservations, :foodie_id, :integer
  end
end
