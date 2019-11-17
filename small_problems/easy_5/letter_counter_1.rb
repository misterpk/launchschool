# problem
# input
# string with 1 or more space separated words
# output
# return a hash that shows the number of words in different sizes
# tests
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
#
# data structures
# array and hash
#
# algorithm
# split words into an array
# array.each count word size
# add count to hash with size as key
require 'byebug'

def word_sizes(words)
  # array_of_word_sizes = words.split.map(&:size)
  # hash_counting_word_sizes = {}
  # array_of_word_sizes.each do |size|
  #   if hash_counting_word_sizes.key?(size)
  #     hash_counting_word_sizes[size] += 1
  #   else
  #     hash_counting_word_sizes[size] = 1
  #   end
  # end
  # hash_counting_word_sizes
  counts = Hash.new(0) # gives non-existing keys 0 first
  words.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
