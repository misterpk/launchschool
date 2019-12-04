# problem
# input
# string
# output
# all substrings beginning with the first letter
#
# tests
# substrings_at_start('abc') == ['a', 'ab', 'abc']
#substrings_at_start('a') == ['a']
#substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
#
# data structure
# string
#
# algorithm
# 0..string.length do |i|
# string.slice(0, i)
require 'byebug'

def substrings_at_start(string)
  substring_array = []
  string.length.times do |count|
    substring_array << string[0, count + 1]
  end
  substring_array
end

#p substrings_at_start('abc') == ['a', 'ab', 'abc']
#p substrings_at_start('a') == ['a']
#p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
