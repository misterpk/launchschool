# problem
# input - string
# output - same string but word number converted to digits
#
# tests
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
#
# data structure
# hash and array
#
# algorithm
# create hash to convert words to digit
# split string into word array
# iterate over array, if item in hash, return digit, else return the element
# join add spaces
require 'byebug'

DIGITS = {
  "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6,
  "seven" => 7, "eight" => 8, "nine" => 9, "zero" => 0
}.freeze

def word_to_digit(string)
  words = string.split(/[ .]/)
  byebug
  new_string = words.map do |word_string|
    if DIGITS.include?(word_string)
      DIGITS[word_string]
    else
      word_string
    end
  end
  new_string.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
