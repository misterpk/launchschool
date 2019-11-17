# problem
# input
# string of words separated by spaces
# output
# return a single string in which the first and last letters of every
# word are swapped
#
# tests
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'
#
# data structure
# array
#
# algorithm
# array = input.split
# for each item in array
# create new_array from chars
# if new_array.length == 1 return new_array[0]
# take 0 and new_array - 1 indexes and switch them
# swap value in original array
require 'byebug'

# def swap(string)
#   word_array = string.split
#   word_array.each_with_index do |word, index|
#     char_array = word.chars
#     return char_array[0] if word_array.size == 1 && char_array.size == 1
#     first_letter = char_array[0]
#     last_letter = char_array[char_array.size - 1]
#     char_array[0] = last_letter
#     char_array[char_array.size - 1] = first_letter
#     word_array[index] = char_array.join
#   end
#   word_array.join(" ")
# end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
