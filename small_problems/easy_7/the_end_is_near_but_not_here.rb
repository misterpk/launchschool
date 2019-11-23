# problem
# input
# string
# output
# return the next to the last word
#
# tests
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'
#
# data structure
# array
#
# algorithm
# split string into array
# return array[-2]
#
# Edge cases
# 0 words - return nil
# 1 word - return word
# no middle (even) - return length/2 -1
# middle (odd) - return length / 2
require 'byebug'

def penultimate(string)
  string.split[-2]
end

def middle_word(string)
  return nil if string.empty?
  return string if string.size == 1
  word_array = string.split
  array_size = word_array.size
  array_size.odd? ? word_array[array_size / 2] : word_array[array_size / 2 - 1]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
puts middle_word('1 2 3 4 5 6 7 8 9')
puts middle_word('1 2 3 4 5 6 7 8 9 10')
puts middle_word('')
puts middle_word('1')
