class User
	def break(bike)
		bike.break!
 	end

 	def rent(station)
 		if station.can_rent? 
 			station.rent_bike
 		end
 		# station.nr_of_bikes -= 1
 		# puts station.nr_of_bikes
 	end

 	def return(station)
 		if station.can_return?
 			station.return_bike
 		else
 			puts "Can't return bike! Station is full!"
 		end
 	end
end

# station = Station.new
