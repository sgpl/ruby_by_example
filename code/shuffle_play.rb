## need to fix AudioOpenError from using afplay on terminal. 
## script not working as of now. 

#!/usr/bin/env ruby
# shuffle_play

class Array # we are opening array class and adding behaviour here. 

=begin rdoc
Non-destructive; returns a copy of self, re-ordered randomly.
=end

	def shuffle()
		sort_by { rand }
	end


=begin rdoc
Destructive; re-orders self randomly.
=end	

	def shuffle!()
		replace(shuffle)
	end


=begin rdoc
While we're here, we might as well offer a method
for pulling out a random member of the <b>Array</b>
=end	
	
	def random_element()
		shuffle[0]
	end

end # Array


###

class ShufflePlayer # creating completely novel class

	def initialize(files) # defining an initialize method that takes an argument called files
		@files = files # assigning files to instance variable called @files
	end

=begin rdoc
Plays a shuffled version of self with the play_file method.
=end

=begin
 In this case, we’re asking the ShufflePlayer to loop 
 through each element of @files, call that element file, 
 and call some method called play_file, taking file 
 as an argument. 
=end

	def play()
		@files.shuffle.each do |file|
			play_file(file)
		end
			# this can also be re-written as: 
			# @files.shuffle.each {|file| play_file(file)}

			# blocks can either start with { and end with } OR 
			# start with "do" and end with "end" 

			# blocks delineated with {} are evaluted before blocks delineated with "do and end"
	end

	private

=begin rdoc
Uses ogg123, assumes presence and appropriateness.
=end

	def play_file(file)
		system("afplay #{file}") #switching ogg123 to afplay
	end

end #ShufflePlayer

###

sp = ShufflePlayer.new(ARGV)
sp.play()


=begin
how to run the program: 
>> ruby -w shuffle_play.rb ~/Documents/Audio/Music/SomeFile/*.ogg

also afplay 

=end