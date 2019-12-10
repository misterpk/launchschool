#problem
# input - number, n = digits rotated
# output - new number with the last n number rotated
#
# tests
# rotate_rightmost_digits(735291, 1) == 735291
#rotate_rightmost_digits(735291, 2) == 735219
#rotate_rightmost_digits(735291, 3) == 735912
#rotate_rightmost_digits(735291, 4) == 732915
#rotate_rightmost_digits(735291, 5) == 752913
#rotate_rightmost_digits(735291, 6) == 352917
#
# data structures
# number to string to array and back
#
# algorithm
# convert number to string
# split string to char array
# add items to new array until n
# calculate rotated portion of array
#   array[-n..-1]
#   -n is now last, then add the rest starting from -n
require 'byebug'
require './rotation_1'

def rotate_rightmost_digits(number, numbers_to_rotate)
  #return number if numbers_to_rotate == 1
  #number_as_array = number.to_s.chars
  #untouched_array = number_as_array[0...number_as_array.size - numbers_to_rotate]
  #rotated_array = number_as_array[(-numbers_to_rotate + 1)..-1] + [number_as_array[-numbers_to_rotate]]
  #(untouched_array + rotated_array).join.to_i
  # LS solution is way better than mine
  # Added this because I think it improves performance
  return number if numbers_to_rotate == 1
  all_digits = number.to_s.chars
  # This statement is key. this is only reassigning the digits we want
  all_digits[-numbers_to_rotate..-1] = rotate_array(all_digits[-numbers_to_rotate..-1])
  all_digits.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
