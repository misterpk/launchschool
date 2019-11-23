# problem
# input
# 2 array arguments that are numbers
# output
# returns a new array that contains the product of each pair of numbers with the same
# index
# assume the same number of elements
#
# tests
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
#
# data structure
# array
#
# algorithm
# create new array
# each with index, multiply both values
# push to new array
require 'byebug'

def multiply_list(array1, array2)
  # new_array = []
  # array1.size.times do |index|
  #   new_array << array1[index] * array2[index]
  # end
  # new_array
  array1.zip(array2).map { |subarray| subarray.reduce(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
