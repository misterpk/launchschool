# problem
# input
# array of elements - array
# output
# every other element in the array - array
#
# tests
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
#
# data structure
# array
#
# algorithm
# iterate through array and store the 1st, 3rd, etc. in a new array

def oddities(array)
  new_array = []
  array.each_with_index do |element, index|
    new_array.push(element) if (index + 1).odd?
  end
  new_array
end

def evenities(array)
  new_array = []
  array.each_with_index do |element, index|
    new_array.push(element) if (index + 1).even?
  end
  new_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
