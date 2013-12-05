class WallNew
	def initialize(num1, num2)
		@bottles = num1
		@decrement = num2
	end

	def sing_song()
		while @bottles > 1
			puts "#{@bottles} bottles of beer on the wall, \n put one down and pass it around."
			@bottles -= @decrement
			puts "#{@bottles} bottles of beer on the wall.\n\n"
			if @bottles == 1
				puts "Only one left. you aren't getting any anymore."
				break
			end
		end
	end

end

print "enter the number of bottles: "; input1 = gets.chomp.to_i
print "enter qty decrease: "; input2 = gets.chomp.to_i
aa = WallNew.new(input1, input2)
aa.sing_song()