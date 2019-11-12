# Understand the problem
# input:
# age - integer
# desired_retiring_age - integer
# output:
# "It's current_year. You will retire in retirement_year" - string
# "You have only number_of_years_till_retirement years of work to go!"
#
# Test Cases
# input:
# age = 30
# desired_retiring_age = 70
# output:
# It's 2019. You will retire in 2059.
# You have only 40 years of work to go!
#
# Data Structures
# number
#
# Algorithms
# current_time = Time.now
# current_year = current_time.year
# # number_of_years_till_retire = desired_retiring_age - age
# retirement_year = current_year + number_of_years_till_retire

puts('What is your age?')
current_age = gets.to_i

puts('At what age would you like to retire?')
age_at_retire = gets.to_i

current_year = Time.now.year
years_till_retirement = age_at_retire - current_age
year_of_retirement = current_year + years_till_retirement

puts("It's #{current_year}. You will retire in #{year_of_retirement}.")
puts("You have only #{years_till_retirement} years of work to go!")
