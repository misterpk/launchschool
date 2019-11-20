# problem
# input
# array of elements
# output
# array that reverses itself in place (mutates the same array)
#
# tests
# see example
#
# data structure
# array
#
# algorithm
# it will take array.size / 2 moves
# left = 0
# right = array.size - 1
# counter = 1
# swap left and right
# increment counter
# add one to left
# subtract one from right
# increment counter
require 'byebug'
# def reverse!(array)
#   counter = 0
#   left_index = 0
#   right_index = array.size - 1
#   until counter == array.size / 2
#     left_value = array[left_index]
#     right_value = array[right_index]
#     array[left_index] = right_value
#     array[right_index] = left_value
#     counter += 1
#     left_index += 1
#     right_index -= 1
#   end
#   array
# end
#
# LS solution
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    # NOTE: Think about when you can do multiple assignment.
    # swapping values is a great example
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
reverse!(list) == []
puts list == []
