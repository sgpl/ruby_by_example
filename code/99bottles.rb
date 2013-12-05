class Wall  # classes

	def initialize(num_bottles) # instance variable
		@bottles = num_bottles
	end

=begin rdoc
Predicate, ends in a question mark, returns <b>Boolean</b>.
=end

	def empty?() #predicate method
		@bottles.zero?
	end

	def sing_one_verse!() # destructive method*
		puts sing(' on the wall, ') + sing("\n") + take_one_down! + sing(" on the wall.\n\n")		
	end

	private # private methods

	def sing(extra=' ')
		"#{@bottles>0? @bottles: 'no more'} #{(@bottles == 1)? 'bottle' : 'bottles'} of beer " + extra
	end
	# first bit says that if bottles is greater than zero, 
	# the expressoin evaluates to # of bottles, otherwise
	# it evaluates to "no more". 

	# the second bit inside the interpolation aka #{} is self explainatory. 

	# 

=begin rdoc
destructive method named with a bang because it decrements @bottles.
returns a <b>string</b>
=end 

	def take_one_down!()
		@bottles -= 1
		'take one down, pass it around, '
	end

end

# wall_a = Wall.new(19)
# 30.times do 
# 	wall_a.sing_one_verse!()
# end
# # wall_a.sing_one_verse!()


# another way to call the class till the song is complete till 
# exhaustion: 

wall_b = Wall.new(29)
# wall_b.sing_one_verse! until wall_b.empty?

# another way to run the program?
while !wall_b.empty?
	wall_b.sing_one_verse!
end


#!/usr/bin/env ruby 
# 99 bottles problem in ruby


#* destructive methods (end with a bang or exclaimation point.)
# they change the state of their object which means that they perform some action 
# on their object that persists after the method has been called. 

# interpolation: #{} <<using this within double quotes. 

# only the class itself can access the methods that are defined 
# after the word private. 


# 

# The initialize method is automatically private, and 
# the (public) new method of any object automatically 
# calls the (private) initialize method of that same object. 
# That’s why we create an initialize method when we write
# completely new classes.

