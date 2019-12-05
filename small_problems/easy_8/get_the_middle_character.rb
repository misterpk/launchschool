#problem
# input - non empty string
# output - middle character, if odd, 1 char, if even 2 chars
#
# tests
# center_of('I love ruby') == 'e'
#center_of('Launch School') == ' '
#center_of('Launch') == 'un'
#center_of('Launchschool') == 'hs'
#center_of('x') == 'x'
#
# data structures - string
#
# algorithm
# if string.size.odd?
# string.size / 2, 1 char
# else
# string.size / 2 - 1, 2 chars
require 'byebug'

def center_of(string)
  length = string.size
  length.odd? ? string[length / 2, 1] : string[length / 2 - 1, 2]
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
