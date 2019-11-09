require 'pry'

def reverse_words(sentence)
  # word_array = sentence.split
  # word_array.map do |word|
  #   if word.size >= 5
  #     word.reverse!
  #   else
  #     word
  #   end
  # end
  # word_array.join(' ')
  word_array = []

  sentence.split.each do |word|
    word.reverse! if word.size >= 5
    word_array << word
  end

  word_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
