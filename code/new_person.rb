class NewPerson


	def about_person()
		print "What is your name?: " ; @name = gets.chomp
		print "What is your age?: " ; @age = gets.chomp.to_i
		print "What is your gender?: " ; @sex = gets.chomp
		print "What is your occupation?: " ; @occupation = gets.chomp
	end


	# def initialize()#name, age, sex, occupation)
	# 	@name = name
	# 	@age = age
	# 	@sex = sex
	# 	@occupation = occupation
	# end




	def get_info()
		puts "This information report is about #{@name}."
		if (@sex == "male") || (@sex == "Male") || (@sex == "M")
			puts "He is #{@age} years old."
			puts "He is a #{@occupation}."
		else
			puts "She is #{@age} years old."
			puts "She is a #{@occupation}."
		end
	end

end


person1 = NewPerson.new()
person1.about_person()
person1.get_info()