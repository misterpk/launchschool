require 'byebug'

# While iterating over an array, avoid mutating it from within the block.
# Instead you can use the Array methods select or reject/reject!.

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }
  words.join(' ')

  words.join(' ')
end

def negative?(word)
  %w(dull boring annoying chaotic).include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
