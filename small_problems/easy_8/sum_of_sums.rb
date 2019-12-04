# problem
# input
# array of numbers
# output
# return the sum of the sums
#
# tests
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
#sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
#sum_of_sums([4]) == 4
#sum_of_sums([1, 2, 3, 4, 5]) == 35
#
# data structures
# array
#
# algorithm
# total = 0
# previous_total = 0
# array.each
# total += previous_total + number
# previous_total += number
require 'byebug'

def sum_of_sums(number_array)
  total = 0
  previous_total = 0

  number_array.each do |number|
    previous_total += number
    total += previous_total
  end

  total
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35

# cool solution using reduce
# def sum_of_sums(numbers)
#  sum_total = 0
#  1.upto(numbers.size) do |count|
#    sum_total += numbers.slice(0, count).reduce(:+)
#  end
#  sum_total
# end
