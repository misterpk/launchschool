#problem
# input - array
# output - array with first item as last item, other order unchanged
#
# tests
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
#rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
#rotate_array(['a']) == ['a']
#
#x = [1, 2, 3, 4]
#rotate_array(x) == [2, 3, 4, 1]   # => true
#x == [1, 2, 3, 4]
#
# data structures
# array
#
# algorithm
# new_array
# iterate through array
# push first value to new_array
# push next value to begining of new_array
# push each values to the next spot
require 'byebug'

def rotate_array(array)
  new_array = []
  array.each_with_index do |element, index|
    new_array[array.size - 1] = element if index == 0
    new_array[index - 1] = element
  end
  new_array
  # LS Solution
  # array[1..-1] + [array[0]]
end

def rotate_string(string)
  rotate_array(string.chars).join('')
end

def rotate_integers(number)
  rotate_string(number.to_s).to_i
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]
