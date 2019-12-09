#problem
# input - string
# output - true if all chars are uppercase, otherwise false
#
# tests
# uppercase?('t') == false
#uppercase?('T') == true
#uppercase?('Four Score') == false
#uppercase?('FOUR SCORE') == true
#uppercase?('4SCORE!') == true
#uppercase?('') == true
#
# data structures
# string and array
#
# algorithm
# split to char array
# reduce(start with true) return false if any lowercase
require 'byebug'

def uppercase?(string)
  string == string.upcase
  #all_upper = true
  #string.chars.each do |char|
  #  all_upper = char.match?(/[^a-z]/)
  #  return all_upper if !all_upper
  #end
  #all_upper
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
