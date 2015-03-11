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

	def fix!
		if (@broken == false)
			puts 'It is not broken, no need to fix'
		end
		@broken = false
	end

	def is_rented?

	end

	def is_returned?
		
	end

end