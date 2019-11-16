# problem
# input
# string of digits
# output
# return the appropriate number as an integer
#
# tests
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
#
# data structure
# hash lookup table for digits
# array to store characters
#
# algorithm
# split string into char array
# for each, value = 10 * value + digit

require 'byebug'
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(number_as_string)
  digits = number_as_string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# TODO: hexadecimal_to_integer
