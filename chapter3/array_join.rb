#!/usr/bin/env ruby
# array_join.rb

class Array

	def my_join(separator1=',', separator2=' and ')
		modified_join(separator1, separator2)
	end

	protected

	def modified_join!(separator1, separator2)
		last_one = self.pop()
		join(separator1) + separator2 + last_one.to_s
	end

	def modified_join(separator1, separator2)
		self.dup.modified_join!(separator1, separator2)
	end

end

=begin
# how i'd write something like this?

arr1 = [1,2,3,4,5]

new_var = arr1.pop()

puts arr1.join(',') + " and #{new_var}"


=end