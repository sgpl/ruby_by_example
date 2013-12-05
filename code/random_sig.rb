filename = ARGV[0] || (ENV['HOME'] + '/ruby/rubyex/sig_quotes.txt') # not sure
quotation_file = File.new(filename, 'r') # variable quotation_file is created w/ read access ??
file_lines = quotation_file.readlines() # this variable reads lines from quotation_file and stores it in it
quotation_file.close() # quotation_file is closed
quotations = file_lines.to_s.split("\n\n") # new variable where we write the file_lines splitting by two new lines from original file
random_index = rand(quotations.size) # random number generated using .size on quotations
quotation = quotations[random_index] # one quoutation from the quotations array stored in new variable
sig_file_name = ENV['HOME'] + '/.signature' # not sure
signature_file = File.new(sig_file_name, 'w') # 
signature_file.puts 'Sharad Gopal | sharad@gatech.edu '
signature_file.puts quotation
signature_file.close()

# essentially quotations.size is returning 1. wth



# puts quotations.size
# # puts quotations[random_index]
# # puts quotations
# #!/usr/bin/env ruby
# # random_sig.rb

# command to run this in terminal 
# ruby -w code/random_sig.rb ; cat ~/.signature