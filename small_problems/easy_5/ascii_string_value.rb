# problem
# input
# words - string
# output
# ASCII string value (sum of the ASCII values of chars) - Integer
#
# tests
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
#
# data structure
# array
#
# algorithm
# split string into an array of characters
# map array into ASCII (String#ord) values
# sum values in array
# might be able to just reduce from start
require 'byebug'
def ascii_value(string)
  # string.chars.map(&:ord).sum
  # sum = 0
  # string.each_char { |char| sum += char.ord }
  # sum
  string.sum # ruby > 2.4
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
