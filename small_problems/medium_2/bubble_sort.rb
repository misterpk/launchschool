# procedure bubbleSort(A : list of sortable items)
#    n := length(A)
#    repeat
#        newn := 0
#        for i := 1 to n - 1 inclusive do
#            if A[i - 1] > A[i] then
#                swap(A[i - 1], A[i])
#                newn := i
#            end if
#        end for
#        n := newn
#    until n ≤ 1
#end procedure
require 'byebug'

def bubble_sort!(array)
  position = array.size
  loop do
    new_position = 0
    (1..position - 1).each do |i|
      if array[i - 1] > array[i]
        array[i], array[i - 1] = array[i - 1], array[i]
        new_position = i
      end
    end
    position = new_position
    break if position <= 1
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
