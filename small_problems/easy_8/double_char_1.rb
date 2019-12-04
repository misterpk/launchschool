#problem
# input - string
# output - returns a new string with chars doubled
#
# tests
# repeater('Hello') == "HHeelllloo"
#repeater("Good job!") == "GGoooodd  jjoobb!!"
#repeater('') == ''
#
# data structure
# string
#
# algorithm
# new_string = ''
# string.each_char
# new_string.concat(char * 2)
# new_string
require 'byebug'

def repeater(string)
  new_string = ''
  string.each_char do |char|
    new_string.concat(char * 2)
  end
  new_string
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
