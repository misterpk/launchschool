# problem
# input
# string
# case insensitive
# ignore non-alphanumeric characters
# output
# true if palindrome, false if not
#
# tests
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false
#
# data structure
# array or string
#
# algorithm
# strip out non-alphanumeric calculators
# downcase
# now element == element.reverse

def real_palindrome?(value)
  # value.gsub!(/[^0-9a-z]/i, '')
  # value.downcase!
  value = value.downcase.delete('^0-9a-z')
  value == value.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
