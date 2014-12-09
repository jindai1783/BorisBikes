
class Station
	attr_accessor :max_capacity
	attr_accessor :nr_of_bikes

	def initialize
		@max_capacity = 50
		@nr_of_bikes = 50

	end

	def can_return?
		if ( @nr_of_bikes < @max_capacity )
			return true
		else
			return false
		end
	end

	def can_rent?
		if ( @nr_of_bikes > 0)
			return true
		else
			return false
		end
	end	

	def rent_bike
		@nr_of_bikes -= 1
	end

end
