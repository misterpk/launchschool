# problem
# input
# string
# output
# returns a NEW string that contains the value of the original string
# with all consecutive duplicate characters collapsed into a single character.
#
# tests
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''
#
# data structure
# array
#
# algorithm
# split string into char_array
# for each char in char_array, push to new array if
# current char != prev_char
require 'byebug'

def crunch(words)
  cleaned_chars = []
  previous_char = ''
  words.chars.each do |char|
    cleaned_chars << char if char != previous_char
    previous_char = char
  end
  cleaned_chars.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
