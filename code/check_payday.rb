#!/usr/bin/env ruby
# check_payday.rb

days_in_period = 14
seconds_in_day = 60*60*24

matching_date = Time.local(0,0,0,22,9,2006,5,265,true,"EDT")
current_date = Time.new()

difference_in_seconds = (current_date - matching_date)
difference_in_days = (difference_in_seconds/seconds_in_day).to_i
days_wait = (
	days_in_period - difference_in_days) % days_in_period

if (days_wait.zero?)
	puts "payday today"
else
	print "payday in #{days_wait} day"
	puts days_wait == 1 ? '.' : 's.'
end
