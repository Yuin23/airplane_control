require 'weather'

describe Weather do 
 	it 'says it is sunny' do 
 		weather = double Weather, :condition => :sunny 
 		expect(weather.condition).to eq :sunny
 	end 

 	it 'says it is stormy' do 
 		weather = double Weather, :condition => :stormy
 		expect(weather.condition).to eq :stormy 
 	end 



end 
