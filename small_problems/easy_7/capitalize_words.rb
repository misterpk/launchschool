# problem
# input
# string
# output
# return a new string that capitalizes the first letter of every word
#
# tests
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
#
# data structure
# string and array
#
# algorithm
# split string into array
# for each word, word.capitalize
# join into new string

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
