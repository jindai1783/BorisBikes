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

end

describe "Testing users" do

	let(:user) {User.new}
	let(:station) {Station.new}

	it "The user do not start with a bike" do
		expect(user.has_bike).to eq false
	end

	it "Should be able to rent bike" do
		user.rent(station)
		expect(user.has_bike).to eq true
	end

	it "Should be able to return bike" do
		station.update_stock(20)
		
		nr_bikes = station.nr_of_bikes
		nr_bikes += 1

		user.return(station)
		expect(station.nr_of_bikes).to eq nr_bikes
	end

end