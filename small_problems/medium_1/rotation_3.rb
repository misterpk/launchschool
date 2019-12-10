#problem
# input - number
# ouput - number rotated the max amount of times
#
# tests
# max_rotation(735291) == 321579
#max_rotation(3) == 3
#max_rotation(35) == 53
#max_rotation(105) == 15 # the leading zero gets dropped
#max_rotation(8_703_529_146) == 7_321_609_845
#
# data structures
# array
#
# algorithm
# for each item in the array, start at index and rotate
require 'byebug'
require './rotation_2'

def max_rotation(number)
  numbers_array = number.to_s.chars
  numbers_array.each_index do |index|
    number = rotate_rightmost_digits(number, numbers_array.size - index)
  end
  number
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
