# problem
# input
# two arrays
# output
# return a new array that has elements from both arrays but alternating
# assume both arrays are not empty and have the same size
#
# tests
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
#
# data structure
# array
#
# algorithm
# create new array
# loop through arrays using while loop
# push to new array
def interleave(a1, a2)
  # new_array = []
  # index = 0
  # while index < a1.size
  #   new_array.push(a1[index])
  #   new_array.push(a2[index])
  #   index += 1
  # end
  # new_array
  # LS solution
  # result = []
  #   array1.each_with_index do |element, index|
  #     result << element << array2[index]
  #   end
  #   result
  a1.zip(a2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
