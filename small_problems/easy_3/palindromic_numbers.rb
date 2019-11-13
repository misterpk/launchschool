# problem
# input
# integer
# output
# true if integer is a palindrome, false if not
#
# tests
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true
#
# data structure
# string
#
# algorithm
# string_number = integer.to_s
# string_number == string_number.reverse

def palindromic_number?(number)
  number_as_string = number.to_s.to_i.to_s
  number_as_string == number_as_string.reverse
end


puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# TODO: figure out a way to handle leading zeros
# puts palindromic_number?(0005000) == true
# puts palindromic_number?(0123210) == true
