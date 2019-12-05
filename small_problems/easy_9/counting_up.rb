#problem
# input - number
# output - array counting up to the number
#
# tests
# sequence(5) == [1, 2, 3, 4, 5]
#sequence(3) == [1, 2, 3]
#sequence(1) == [1]
#
# data structures - numbers and array
#
# algorithm
# 1.upto(number) do
# array.push(i + 1)
require 'byebug'

def sequence(number)
  numbers = []

  1.upto(number) { |num| numbers << num }

  numbers
  # LS solution
  # (1..number).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
