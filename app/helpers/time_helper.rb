module TimeHelper
	def time_to_next_half_hour(time) 
	    array = time.to_a
	    half = ((array[1] % 60) / 30.0).ceil
	    array[1] = (half * 30) % 60
	    Time.local(*array) + (half == 4 ? 3600 : 0)
	end

	
end
