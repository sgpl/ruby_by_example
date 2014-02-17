# need to add notes from code listing in book

class String

	DUAL_CASE_ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

	def palindrome?(case_matters=true)
		letters_only(case_matters) == letters_only(case_matters).reverse
	end

	private

	def letters_only(case_matters=false)
		just_letters = split('').find_all do |char| 
			DUAL_CASE_ALPHABET.include?(char)
		end.join('')
		return just_letters if (case_matters) 
		return just_letters.downcase
	end 
end