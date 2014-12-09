
class Station
	attr_reader :max_capacity
	attr_reader :nr_of_bikes

	def initialize
		@max_capacity = 50
		@nr_of_bikes = 50
	end

	# def can_return?
	# 	if ( @nr_of_bikes < @max_capacity )
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end

	# def can_rent?
	# 	if ( @nr_of_bikes > 0)
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end

	def rent_bike
		if ( @nr_of_bikes > 0)
			@nr_of_bikes -= 1
			return true
		else
			puts "No bikes, sorry!"
			return false
		end
	end

	def return_bike
		if ( @nr_of_bikes < @max_capacity )
			@nr_of_bikes += 1
			return true
		else
			puts "No more space, sorry!"
			return false
		end
	end

	def update_stock(number_bikes)
		@nr_of_bikes = number_bikes
	end

end
