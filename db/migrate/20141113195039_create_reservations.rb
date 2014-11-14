class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :size_of_party
      t.text :comments_and_requests
      t.integer :user_phone
      t.datetime :res_time

      t.timestamps
    end
  end
end
