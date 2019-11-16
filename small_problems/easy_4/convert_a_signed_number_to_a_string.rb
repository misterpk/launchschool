# problem
# like convert_number_to_string, except add the sign
# 0 doesn't have a sign
require './convert_a_number_to_a_string'
require 'byebug'

def signed_integer_to_string(integer)
  # byebug
  if integer == 0
    integer_to_string(integer)
  elsif integer < 0
    "-#{integer_to_string(integer.abs)}"
  else
    "+#{integer_to_string(integer)}"
  end
end

puts signed_integer_to_string(4321) #== '+4321'
puts signed_integer_to_string(-123) #== '-123'
puts signed_integer_to_string(0) #== '0'
