# problem
# input
# string
# output
# all strings that are palindromes
#
# tests
# palindromes('abcd') == []
#palindromes('madam') == ['madam', 'ada']
#palindromes('hello-madam-did-madam-goodbye') == [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#]
#palindromes('knitting cassettes') == [
#  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#]
#
# data structure
# string and array
#
# algorithm
# create all substrings using substrings function
# array.each
# element.size > 1 && element == element.reverse push to new array
# return new array
require 'byebug'
require './leading_substrings'
require './all_substrings'

def palindromes(string)
  palindromes = []
  substrings = substrings(string)

  substrings.each do |substring|
    palindromes << substring if palindrome?(substring)
  end

  palindromes
end

def palindrome?(string)
  string.delete!("^A-Za-z")
  string.size > 1 && string.downcase == string.reverse.downcase
end

p palindromes('abcd') #== []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#]
palindromes('knitting cassettes') #== [
#  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#]
