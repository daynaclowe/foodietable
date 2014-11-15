class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :password_digest
      t.text :address
      t.integer :capacity
      t.text :bio
      t.integer :phone_number,  :limit => 8

      t.timestamps
    end
  end
end
