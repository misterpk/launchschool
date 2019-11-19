arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
expected_result = [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

new_arr = arr.sort_by do |sub_array|
  sub_array.select { |element| element.odd? }
end

p new_arr
puts expected_result == new_arr
