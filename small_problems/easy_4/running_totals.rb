# problem
# input
# array of numbers
# output
# return an array of numbers with the same number of elements but is the
# running total
#
# tests
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []
#
# data structure
# array
#
# algorithm
# map first array
# for each value return sum + value
require 'byebug'

def running_total(array_of_numbers)
  sum = 0
  array_of_numbers.map { |number| sum += number }
  # Using each_with_object... this one is ok
  # array_of_numbers.each_with_object([]) do |number, array|
  #   array << sum += number
  # end
  # Using reduce... this doesn't feel good to me
  # new_array = []
  # array_of_numbers.reduce(0) do |sum, number|
  #   new_array << sum + number
  #   sum + number
  # end
  # new_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

