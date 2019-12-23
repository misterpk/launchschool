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

DIGIT_HASH = {
  "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5",
  "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9", "zero" => "0"
}.freeze

def word_to_digit(words:, remove_spaces: false, convert_to_telephone: false)
  if remove_spaces
    convert_word_numbers_to_digits_without_spaces(words)
  elsif convert_to_telephone
    convert_word_numbers_to_telephone_number(words)
  else
    convert_word_numbers_to_digits(words)
  end
  words
end

def convert_word_numbers_to_digits(string)
  DIGIT_HASH.keys.each do |word|
    string.gsub!(/\b#{word}\b/i, DIGIT_HASH[word])
  end
end

def convert_word_numbers_to_digits_without_spaces(string)
  DIGIT_HASH.keys.each do |word|
    string.gsub!(/\b(\d*)(#{word}\s*)(\d*)\b/i, '\1' + DIGIT_HASH[word] + '\3')
  end
end

def convert_word_numbers_to_telephone_number(string)
  convert_word_numbers_to_digits_without_spaces(string)
  string.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
end

puts word_to_digit(words: 'Please call me at one two three Five FIVE five one two three four. Thanks.', remove_spaces: true) #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
