class Foodie < ActiveRecord::Base
	has_many :reservations
	has_many :reviews
end
