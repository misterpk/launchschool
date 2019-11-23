# problem
# input
# two arrays of numbers
# output
# return a new array containing the product of every element that can be formed
# between the array, sorted
#
# tests
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
#
# data structure
# array
#
# algorithm
# come up with all of the pairs between the 2 arrays
# multiply the pairs and store in a new array
# sort the new array

def multiply_all_pairs(array1, array2)
  # using 2 loops
  # products = []
  #   array_1.each do |item_1|
  #     array_2.each do |item_2|
  #       products << item_1 * item_2
  #     end
  #   end
  #   products.sort
  array1.product(array2).map { |subarray| subarray.reduce(:*) }.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
