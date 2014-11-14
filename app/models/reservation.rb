class Reservation < ActiveRecord::Base
	validates :name, :user_phone, :email_address, :size_of_party, presence: true
	validates :user_phone, :size_of_party, numericality: {only_integer: true}
end
