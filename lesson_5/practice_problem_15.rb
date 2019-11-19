arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
expected_result = [{:e=>[8], :f=>[6, 10]}]

new_arr = arr.select do |sub_hash|
  sub_hash.all? do |_, v|
    v.all? do |element|
      element.even?
    end
  end
end

p new_arr
puts expected_result == new_arr
