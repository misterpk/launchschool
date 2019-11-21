# problem
# input
# string
# output
# hash containing 3 entries of counts of:
# 1. lowercase letters
# 2. uppercase letters
# 3. neither
#
# tests
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#
# data structure
# string and hash
#
# algorithm
# create new hash
# on string, count:
# 'a-z'
# 'A-Z'
# string.length - 'a-z' - 'A-Z'
def letter_case_count(string)
  lowercase_letters = string.count('a-z')
  uppercase_letters = string.count('A-Z')
  neither = string.count('^a-zA-Z')
  {
    lowercase: lowercase_letters,
    uppercase: uppercase_letters,
    neither: neither
  }
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
