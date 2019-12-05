#problem
# input - number
# output - 2 * number, unless double number. double number as is
#
# tests
# twice(37) == 74
#twice(44) == 44
#twice(334433) == 668866
#twice(444) == 888
#twice(107) == 214
#twice(103103) == 103103
#twice(3333) == 3333
#twice(7676) == 7676
#twice(123_456_789_123_456_789) == 123_456_789_123_456_789
#twice(5) == 10
#
# data structure - number and array
#
# algorithm
# if numbers.even? split into 2 arrays
# if arrays.equal? then return number
# else number * 2
require 'byebug'

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
