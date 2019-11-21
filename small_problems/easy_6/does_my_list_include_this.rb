# problem
# input
# array, and search value
# output
# true if the value is in the array, false if not
#
# tests
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false
#
# data structure
# array
#
# algorithm
# array.each, if element == value return true
# or
# array.count value
def include?(array, search_value)
  # array.each do |element|
  #   return true if element == search_value
  # end
  # false
  array.count(search_value) > 0
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
