require './Station.rb'

class Bikes

	def initialize
		@broken = false
	end

	def break!
		@broken = true
	end

	def broken?
		@broken
	end

	def is_rented?

	end

	def is_returned?
		
	end
end

class User
	def break(bike)
		bike.break!
 	end

 	def rent(bike)
 	end

 	def return(bike)
 	end
end

class Van
end

class Garage
end

bike = Bikes.new
user = User.new
user.break(bike)

puts bike.broken?

station =  Station.new
puts station.can_return?
station.max_capacity= 55
puts station.can_return?
