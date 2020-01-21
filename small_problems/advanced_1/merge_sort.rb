require 'byebug'
require './small_problems/advanced_1/merge_sorted_lists'

def merge_sort(array)
  return array if array.size == 1

  subarray1 = array[0...array.size / 2]
  subarray2 = array[array.size / 2...array.size]

  subarray1 = merge_sort(subarray1)
  subarray2 = merge_sort(subarray2)

  merge(subarray1, subarray2)
end

# TODO: implement as a non-recursive algorithm

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
