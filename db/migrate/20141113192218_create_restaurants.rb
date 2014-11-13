class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :password
      t.string :address
      t.integer :capacity
      t.text :bio
      t.integer :phone_number

      t.timestamps
    end
  end
end
