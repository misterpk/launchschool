def sum(integer)
  num_char_array = integer.to_s.chars
  num_char_array.map!(&:to_i)
  num_char_array.sum
  # number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
