def average(integer_array)
  (integer_array.sum / integer_array.size) # add to_f() to one of the values
  # to get it to float
  # sum = integer_array.reduce { |sum, number| sum + number }
  # sum / integer_array.count
end

puts average([1, 5, 87, 45, 8, 8, 37]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
