#problem
# input - positive integer
# output - return a number with its digits reversed
#
# tests
# reversed_number(12345) == 54321
#reversed_number(12213) == 31221
#reversed_number(456) == 654
#reversed_number(12000) == 21 # No leading zeros in return value!
#reversed_number(12003) == 30021
#reversed_number(1) == 1
#
# data structure - number and array
#
# algorithm
# number % 10 to get digit in the ones
# push to array
# number / 10 until 0
require 'pry'

def reversed_number(number)
  #digits = []
  #until number == 0
  #  digits << number % 10
  #  number /= 10
  #end
  #digits.join.to_i
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
