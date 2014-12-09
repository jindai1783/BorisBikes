require './lib/boris_bikes.rb'

describe "Testing bikes" do
	
	let(:bike) {Bikes.new}

	it "It could be broken" do
		bike.break!
		expect(bike).to be_broken
	end

	it "It should not be broken" do
		expect(bike.broken?).to eq false
	end

	it "It should be able to be fixed" do
		bike.break!
		bike.fix!
		expect(bike.broken?).to eq false
	end

end

describe "Testing stations" do

	let(:station) {Station.new}

	it "It should not accept returning bikes" do
		expect(station.can_return?).to eq false
	end

	it "It should not accept returning bikes" do
		station.max_capacity = 55
		expect(station.can_return?).to eq true
	end

end



# bike = Bikes.new
# user = User.new
# user.break(bike)

# puts bike.broken?

# station =  Station.new
# puts station.can_return?
# station.max_capacity= 55
# puts station.can_return?