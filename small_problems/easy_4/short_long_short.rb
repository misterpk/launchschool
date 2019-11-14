# problem
# input
# 2 strings
# output
# concatenate the shortest, then longest, then shortest again
#
# tests
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
#
# data structure
# string
#
# algorithm
# longest_string = s1 > s2 ? s1 : s2
# shorter_string = longest_string == s1 ? s2 : s1
# shorter_string + longest_string + shorter_string

def short_long_short(string1, string2)
  # initial try
  # longer_string = string1.size > string2.size ? string1 : string2
  # shorter_string = longer_string == string1 ? string2 : string1
  # shorter_string + longer_string + shorter_string
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
