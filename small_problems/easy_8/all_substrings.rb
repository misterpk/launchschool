# problem
# input
# string
# output
# all substrings of the string, ordered by the position of the string
# that the substring begins
#
# tests
# substrings('abcde') == [
#  'a', 'ab', 'abc', 'abcd', 'abcde',
#  'b', 'bc', 'bcd', 'bcde',
#  'c', 'cd', 'cde',
#  'd', 'de',
#  'e'
#]
#
# data structures
# string and array
#
# algorithm
# loop for starting letter
# pass starting letter to end of string to substrings_at_start
require 'byebug'
require './leading_substrings'

def substrings(string)
  substrings = []
  string.size.times do |count|
    substrings.concat(substrings_at_start(string[count...string.size]))
  end
  substrings
end

#p substrings('abcde') == [
#  'a', 'ab', 'abc', 'abcd', 'abcde',
#  'b', 'bc', 'bcd', 'bcde',
#  'c', 'cd', 'cde',
#  'd', 'de',
#  'e'
#]
