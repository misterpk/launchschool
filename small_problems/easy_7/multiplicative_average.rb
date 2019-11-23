# problem
# input
# array of integers
# output
# multiplies the numbers together then divides result by number of entries (average)
# prints the result rounded to 3 decimal places
#
# tests
# show_multiplicative_average([3, 5])
# The result is 7.500
#
# show_multiplicative_average([6])
# The result is 6.000
#
# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
#
# data structure
# array
#
# algorithm
# iterate over loop and multiple each value
# divide by array.size.to_f (for float)
# print format(%0.3f)
def show_multiplicative_average(number_array)
  average = number_array.reduce(:*) / number_array.size.to_f
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
