# problem
# input
# string with non-alpha characters
# output
# return the string with non-alpha chars repalced by spaces
#
# tests
# cleanup("---what's my +*& line?") == ' what s my line '
#
# data structures
# array
#
# algorithm
# gsub string with non-alpha numeric to space
# put string chars into an array
# split string into chars
# put chars into new array
# ALPHA_CHARS = ('a'..'z').to_a

def cleanup(string)
  string.gsub(/[^a-z]+/i, ' ')
  # clean_chars = []
  # string.chars.each do |char|
  #   clean_chars <<
  #     if ALPHA_CHARS.include?(char)
  #       char
  #     else
  #       ' '
  #     end
  # end
  # clean_chars.join.squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
