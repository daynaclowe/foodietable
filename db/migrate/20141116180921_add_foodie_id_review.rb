class AddFoodieIdReview < ActiveRecord::Migration
  def change
  	 add_column :reviews, :foodie_id, :integer
  end
end
