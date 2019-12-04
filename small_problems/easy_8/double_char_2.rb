#problem
# input - string
# output - new string with consontants doubled, vowels, dig, punc, whitespace not
#
# tests
# double_consonants('String') == "SSttrrinngg"
#double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
#double_consonants("July 4th") == "JJullyy 4tthh"
#double_consonants('') == ""
#
# data structure - string
#
# algorithm
# read each char in string
# if consonant, double
# else single
require 'byebug'

# TODO: rewrite using a proper regex
def double_consonants(string)
  new_string = ''
  string.each_char do |char|
    if char.count("A-Za-z", "^AEIOUaeiou") > 0
      new_string.concat(char * 2)
    else
      new_string.concat(char)
    end
  end
  new_string
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
