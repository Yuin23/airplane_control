require 'airport'
require 'weather'


class Plane

attr_reader :id, :current_planes

	def initialize(id)
		@id = id
		@current_planes = {:landed => [], :taken_off => []}
		@airport_capacity = 100
	end 

	def total_planes
	 	total = @current_planes[:landed] + @current_planes[:taken_off] 
	end 

	def taken_off_planes 
		@current_planes[:taken_off].pop 
	end 

	def landed_planes(plane)
		@current_planes[:landed] << plane  if to_land 
	end 


	def take_off	 
		 #if condition == sunny
	end

	def space	
		space = @airport_capacity - total_planes.count 
	end 

	def can_land?
		space > 0
	end 

	def to_land
		can_land?
	end 

	def not_to_land
		not can_land?
	end




end 