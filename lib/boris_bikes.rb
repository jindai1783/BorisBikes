require './Station.rb'
require './Bikes.rb'
require './User.rb'
require './Van.rb'
require './Garage.rb'

bike = Bikes.new
user = User.new
user.break(bike)

puts bike.broken?

station =  Station.new
puts station.can_return?
station.max_capacity= 55
puts station.can_return?

# bike1 = Bikes.new
# user1 = User.new
# station1 = Station.new