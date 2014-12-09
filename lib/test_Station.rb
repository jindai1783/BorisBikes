
class Station

	def initialize
		@max_capacity = 50
		@nr_of_bikes = 50
	end

	# def max_capacity
	# 	@max_capacity
	# end

	# def max_capacity=(max_capacity)
	# 	@max_capacity = max_capacity
	# end
	# attr_reader :max_capacity
	# attr_writer :max_capacity
	attr_accessor :max_capacity
end

station = Station.new
puts station.max_capacity
station.max_capacity = 55
puts station.max_capacity