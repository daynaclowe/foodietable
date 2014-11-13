class CreateFoodies < ActiveRecord::Migration
  def change
    create_table :foodies do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.text :bio

      t.timestamps
    end
  end
end
