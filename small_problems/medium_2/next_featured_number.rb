#problem
# input - number
# output - next number that:
# - multiple of 7
# - digits only appears once
# tests
# featured(12) == 21
#featured(20) == 21
#featured(21) == 35
#featured(997) == 1029
#featured(1029) == 1043
#featured(999_999) == 1_023_547
#featured(999_999_987) == 1_023_456_987
#
#featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
# data structures
# numbers and array
# algorithm
# check number for criteria
# increment number by 1 until all criteria met
# return if criteria impossible to meet
# - multiple of 7
# -- number % 7 == 0
# - digit only appears once
# - length < 10
# - count of each digit <= 1

def digit_only_once?(number)
  numbers = number.digits
  numbers.uniq == numbers
end

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    return number if digit_only_once?(number)
    number += 14
    break if number >= 9_876_543_210
  end

  "There is no possible number that fulfills those requirements."
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
