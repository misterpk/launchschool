# problem
# input
# string of words
# output
# return a hash with word sizes
# this time, non-alpha do not count
#
# tests
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}
#
# data structures
# hash
#
# algorithm
# do the same as last time except strip out non-alpha
require 'byebug'

def word_sizes(words)
  words.gsub!(/[^a-z ]+/i, "")
  counts = Hash.new(0) # gives non-existing keys 0 first
  words.split.each do |word|
    counts[word.size] += 1
  end
  counts
  # LS solution - YOU CAN USE String#delete
  # counts = Hash.new(0)
  #   words.split.each do |word|
  #     clean_word = word.delete('^A-Za-z')
  #     counts[clean_word.size] += 1
  #   end
  #   counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
