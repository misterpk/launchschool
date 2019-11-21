# problem
# input
# string
# output
# return a new string where each uppercase is replaced by it's lower case
# and vice versa
#
# tests
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
#
# data structure
# string
#
# algorithm
# string.each_char
# check if char is upper or lower case, then swap
def upper?(char)
  char == char.upcase
end

def swapcase(string)
  swapcase_string = ''
  string.each_char do |char|
    swapcase_string << (upper?(char) ? char.downcase : char.upcase)
  end
  swapcase_string
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
