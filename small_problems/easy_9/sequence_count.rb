#problem
# input - 2 integers, first is a count, second is number to start
# output - return an array with count = number of elements and elements are multiples of the number
#
# tests
# sequence(5, 1) == [1, 2, 3, 4, 5]
#sequence(4, -7) == [-7, -14, -21, -28]
#sequence(3, 0) == [0, 0, 0]
#sequence(0, 1000000) == []
#
# data structures
# numbers and array
#
# algorithm
# array = []
# count.times do
# array << initial * index
# return array
def sequence(count, first_number)
  #new_array = []
  #1.upto(count) do |index|
  #  new_array << first_number * index
  #end
  #new_array
  # calling map on a Range returns an array (Range is an Enumerable)
  (1..count).map { |value| value * first }
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
