class Restaurant < ActiveRecord::Base
	has_secure_password

	has_many :reviews
	has_many :reservations

end
