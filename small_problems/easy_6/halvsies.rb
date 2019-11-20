# problem
# input
# array
# output
# a pair of nested arrays, one half on each side
# if odd number, return middle in the first array
#
# tests
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]
#
# data structure
# array
#
# algorithm
# calculate the size of the left and right array
# if odd, middle goes to the left array
# create an array with 2 nested arrays
# populate each nested array with their elements
def halvsies(array)
  new_array = []
  array_size = array.size
  left_array_size = if array_size.odd?
                      array_size / 2 + 1
                    else
                      array_size / 2
                    end
  new_array[0] = array.slice!(0, left_array_size)
  new_array[1] = array
  # new_array[0] = array.slice(0, left_array_size)
  # new_array[1] = array.slice(left_array_size, array_size - left_array_size)
  new_array
end

# LS solution
# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
