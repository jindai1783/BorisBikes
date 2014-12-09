
class Station
	attr_accessor :max_capacity

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
	end	

end
