class Airport	

	attr_reader :name, :capacity, :landed_planes

	def initialize(name, capacity)
		@name = name 
		@capacity = capacity # or use 100
		@landed_planes = [1..5] # need to pass on value 
	end 

	def capacity
		@capacity = 100
	end 

	# need to add individual planes in later. 
	def numbers_of_planes
		@landed_planes.count  
	end

	def has_a_collection_of_planes?
		 numbers_of_planes > 0
	end

	def bomb_scare_is_on 
		true
	end 


	def bomb_scare_is_off
		not bomb_scare_is_on 
	end 

end 