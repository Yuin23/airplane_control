require 'airport'

describe 'airport' do 

let(:airport) {Airport.new('City', 100)}
let(:plane1) {double :Planes, id:'0001'}
let(:plane2) {double :Planes, id:'0002'}

	it 'has a name' do 	
		expect(airport.name).to eq 'City'
	end 

	it 'has a capacity' do
		expect(airport.capacity).to eq 100
	end 

	# add individual plane, compare with capacity
	it 'contains a collection of planes within capacity' do 
		#plane1 = double :@planes
		expect(airport.has_a_collection_of_planes?).to be_true
	end


	context 'has a bomb scare' do 
		it 'to be set off, no plane can land' do 
		plane = double plane, :to_land => false
		airport.bomb_scare_is_on

		expect(plane.to_land).to be_false
		end 

		it 'to be called off, airport back to normal' do 
			plane = double plane, :take_off => true
			airport.bomb_scare_is_off

			expect(plane.take_off).to be_true
		end 
	end 
end 