# problem
# input
# string of digits, possibly with + or - sign
# output
# signed integer (assume positive if no sign)
#
# tests
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100
#
# data structure
# strings and array
#
# algorithm
# check first character for + or -
# if + or - shift into variable
# use string_to_integer on number
# if - sign, make negative Numeric#-@
require './convert_a_string_to_a_number'

def string_to_signed_integer(number_as_string)
  # My solution
  # sign = '+'
  # if number_as_string.start_with?('+', '-')
  #   sign = number_as_string.slice!(0)
  # end
  # number = string_to_integer(number_as_string)
  # number = -number if sign == '-'
  # number
  # LS Solution
  # case number_as_string[0]
  # when '-' then -string_to_integer(number_as_string[1..-1])
  # when '+' then string_to_integer(number_as_string[1..-1])
  # else          string_to_integer(number_as_string)
  # end
  # Refactor
  sign = "+"
  sign = number_as_string.slice!(0) if number_as_string.start_with?('+', '-')
  number = string_to_integer(number_as_string)
  sign == '-' ? -number : number
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
