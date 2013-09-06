require 'plane'

describe Plane do 

	it 'has an ID' do 
		plane = Plane.new ('0001')
		expect(plane.id).to eq '0001'
	end 


	context 'can' do 
		
		it 'take off, if not stormy' do 
			plane = Plane.new ('0001')
			weather = double Weather, :condition => :sunny
			plane.take_off
			expect(plane.take_off).to eq nil 
		end


		it 'only land, if not stormy, and airport is not full' do 
			plane = Plane.new('0001')
			weather = double Weather, :condition => :sunny
			plane.can_land?
			expect(plane.to_land).to be_true

		end 


		xit 'be added into landed planes, once in the airport' do 
			plane = Plane.new('0001')
			plane.to_land 
			expect(plane.landed_planes).to include plane
		end 


		xit 'not land, if stormy, or if airport is full' do 
			plane = Plane.new('0001')
			weather = double Weather, :condition => :stormy 
			plane.not_to_land 
			# i should expect landed_planes has no changes.
			expect(plane.landed_planes).not_to include plane 

		end 


	end


end 