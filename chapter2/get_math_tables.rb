# a script that outputs an integer table till 10. 

print "Enter a number who's table you'd like displayed: "; input = gets.chomp.to_i

# n = 3
11.times do |n|
	puts "#{input} x #{n}  =  #{input*n}"
	puts "---------------"
	sleep 1
	n += 1
end

# ii = 1
# while ii <= 10
# 	puts "#{input}  x  #{ii}  =  #{input*ii}"
# 	ii += 1
# end