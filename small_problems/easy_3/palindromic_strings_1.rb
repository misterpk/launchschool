# problem
# input
# string
# case matters! (Madam is not a palindrome)
# punctuation matters too!
# output
# true if palindrome, false if not
#
# tests
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true
#
# data structure
# string
#
# algorithm
# string == string.reverse, return true

def palindrome?(word)
  word == word.reverse
end

def array_palindrome?(array)
  array == array.reverse
end

def array_or_word_palindrome?(word_or_array)
  word_or_array == word_or_array.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts array_palindrome?([1,2,3,2,1]) == true
puts array_or_word_palindrome?('356653') == true
puts array_or_word_palindrome?([1,2,3,2,1]) == true
