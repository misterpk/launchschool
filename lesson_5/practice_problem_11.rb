arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |array|
  array.select do |value|
    value % 3 == 0
  end
end

p arr
p new_arr
