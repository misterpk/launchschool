# problem
# input
# array
# output
# new array in reversed order
# do not modify the original array
#
# tests
# see example
#
# data structures
# array
#
# algorithm
# same as previous exercise, except create a new array and return that
require 'byebug'
# def reverse(array)
#   left_index = 0
#   right_index = -1
#
#   new_array = array.clone
#   while left_index < array.size / 2
#     new_array[left_index], new_array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end
#
#   new_array
# end
#
# LS solution
# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end

# def reverse(array)
#   result_array = Array.new(array.size)
#   index = -1
#   array.each_with_object(result_array) do |element, new_array|
#     new_array[index] = element
#     index -= 1
#   end
# end
#
# Nice solution
# def reverse(array)
#   Unshift basically keeps prepending values, so eventually the first element is
#   the last
#   array.each_with_object([]) { |el, arr| arr.unshift(el) }
# end
#
# Shortest solution
# def reverse(array)
#   array.reverse_each.inject([],:<<)
# end
def reverse(array)
  # array.inject([]) { |new_arr, e| new_arr.unshift(e) }
  array.inject([], :unshift)
end
#
# recusion example
# def reverse(array)
#   array[0], array[-1] = array[-1], array[0] unless array.empty?
#   return array if array.size <= 2
#   array = [array[0], reverse(array.slice(1,array.size-2)), array[-1]].flatten
# end

puts reverse([1,2,3,4]) == [4,3,2,1] # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
