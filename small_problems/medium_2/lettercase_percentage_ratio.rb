#problem
# input - string
# output - hash with lowercase %, uppercase % and neither %
#
# tests
# letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
#letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
#letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
#
# data structures
# string and hash
#
# algorithm
# count letters
# determine percentage
require 'byebug'

def calculate_percentage(numerator, denominator)
  (numerator.to_f / denominator * 100).round(2)
end

def letter_percentages(string)
  string_size = string.size
  lowercase_percentage = calculate_percentage(string.count('a-z'), string_size)
  uppercase_percentage = calculate_percentage(string.count('A-Z'), string_size)
  neither_percentage = calculate_percentage(string.count('^a-zA-Z'), string_size)
  {
    lowercase: lowercase_percentage,
    uppercase: uppercase_percentage,
    neither: neither_percentage
  }
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
puts letter_percentages('abcdefGHI')
