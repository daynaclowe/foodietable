#Reservation
# time : datetime

#Restaurant
# capacity : integer

class Restaurant
	attr_accessor :capacity
	@capacity
end

Diner = Restaurant.new
Diner.capacity=120
puts Diner.capacity

def CheckCapacity

end

def Reserve(time,capacity)

end

time_start = Time.now
time_end = time_start + 10*60*3

puts time_start
puts time_end
