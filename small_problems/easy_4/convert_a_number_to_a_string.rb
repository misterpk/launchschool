# problem
# input
# positive integer
# output
# string representation of number
#
# tests
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'
#
# data structures
# array lookup, since keys are numbers, pretty much index
# array to store values
#
# algorithm
# until number = 0
# digit = number % 10 to get the last digit
# array.push digit
# number = number / 10 to get the next number
# end
# array.reverse
# array.map number to string from lookup table
# array.sum("")
require 'byebug'
STRING_VALUE = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(integer)
  # My solution
  # number_array = []
  # return STRING_VALUE[0] if integer == 0
  # until integer == 0
  #   digit = integer % 10
  #   number_array << digit
  #   integer /= 10
  # end
  # number_array.reverse!
  # number_array.map! { |number| STRING_VALUE[number] }
  # number_array.sum("")
  # LS
  result = ''
  loop do
    integer, remainder = integer.divmod(10)
    result.prepend(STRING_VALUE[remainder])
    break if integer == 0
  end
  result
end

# puts integer_to_string(4321) == '4321'
# puts integer_to_string(0) == '0'
# puts integer_to_string(5000) == '5000'
