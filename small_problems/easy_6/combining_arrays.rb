# problem
# input
# 2 arrays
# output
# 2 arrays combined, no duplicate values
#
# tests
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#
# data structure
# array
#
# algorithm
# merge the arrays
# run uniq
def merge(array1, array2)
  # (array1 + array2).uniq
  array1 | array2
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
