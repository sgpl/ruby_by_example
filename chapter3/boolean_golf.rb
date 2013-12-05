#!/usr/bin/env ruby
# boolean_golf.rb

=begin rdoc
This is intended merely to add handy true? and false? methods to 
objects.  to_b (to boolean) is an alias to the true?() method.
=end

class Object

	def false?()
		not self
	end

	def true?()
		not false?
	end

	alias :to_b :true? 
	# so to create an alias, 
	# we use alias :the_alias_we_want :name_of_method_being_aliased

end


puts "true.to_b is #{true.to_b }"
puts "false.to_b is #{false.to_b }"
puts "nil.to_b is #{nil.to_b }"
puts "true.false? is #{true.false? }"
puts "false.false? is #{false.false? }"
puts "nil.false? is #{nil.false? }"


=begin 
Object is the superclass for all other classes in ruby 
so methods we add here will be available to every variable of any kind.
=end

# method that returns a boolean is a predicate. 

# :to_b is an instance of the Symbol class. which are preceded with a colon. 
# metaprogramming: general term for writing programs that create/manipulate other programs. 
# technically a compiler or interpreter is an ex. of metaprogramming
# because it allows you to write programs in a high level lang eg: ruby
# which creates a program in a low language eg: C that gets executed. 

# eg: 

# class String
# 	alias :make_me_into_an_integer :to_i
# end

