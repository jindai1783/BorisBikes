class User
 	
 	attr_reader :has_bike
 	def initialize
		@has_bike = false
	end

	def break(bike)
		bike.break!
 	end

 	def rent(station)
 		if station.rent_bike == true
 			@has_bike = true
 		end
 	end

 	def return(station)
 		if station.return_bike == true
 			@has_bike = false
 		end
 	end
end

# station = Station.new
