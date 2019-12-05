#problem
# input - number
# output - if positive return negative, if neg or 0 return neg
#
# tests
# negative(5) == -5
#negative(-3) == -3
#negative(0) == 0
#
# data structure - number
#
# algorithm
# if number is positive, negative
# else, return number
require 'byebug'

def negative(number)
  number.positive? ? -number : number
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0
