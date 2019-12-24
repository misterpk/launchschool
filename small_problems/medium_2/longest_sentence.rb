#problem
# read in a file
# output longest sentence
# - based on words
# - number of characters
#
# data structures
# string and array
#
# algorithm
# read file
# split on sentence ending characters ('.', '!', '?')
# for each item in array split again on ' '
# get array.length
# compare to longest sentence value
# - if longer update word count
# - store sentence
# close file
# print to screen
require 'byebug'

def longest_sentence(file)
  #sentences = File.open(file).read.split(/\.|!|\?/)
  #word_count = 0
  #long_sentence = ''
  #sentences.each do |sentence|
  #  if sentence.split.size > word_count
  #    word_count = sentence.split.size
  #    long_sentence = sentence
  #  end
  #end
  #puts("The longest sentence is:")
  #puts(long_sentence)
  #puts("The sentence has #{word_count} words.")
  # LS solution
  text = File.read(file)
  # \s* strips out the whitespace at the end
  sentences = text.split(/(?<=[?.!])\s*/)
  # Enumerable#max_by is a handy function... min_by exists as well
  largest_sentence = sentences.max_by { |sentence| sentence.split.size }
  largest_sentence = largest_sentence.strip
  number_of_words = largest_sentence.split.size

  puts "#{largest_sentence}"
  puts "Containing #{number_of_words} words"
end

def longest_paragraph(file)
  text = File.read(file)
  paragraphs = text.split(/(\r\n|\n){2}/)
  largest_paragraph = paragraphs.max_by { |paragraph| paragraph.split.size }
  largest_paragraph = largest_paragraph.strip
  number_of_words = largest_paragraph.split.size

  puts "#{largest_paragraph}"
  puts "Containing #{number_of_words} words"
end

def longest_word(file)
  text = File.read(file)
  words = text.split
  # Enumerable#max_by is a handy function... min_by exists as well
  largest_word = words.max_by { |word| word.size }
  largest_word = largest_word.strip
  word_size = largest_word.size

  puts "#{largest_word}"
  puts "Containing #{word_size} letters"
end

def longest_item(file, type)
  case type
  when "sentence"
    longest_sentence(file)
  when "paragraph"
    longest_paragraph(file)
  when "word"
    longest_word(file)
  else
    puts "Invalid type."
  end
end

#longest_sentence("pg84.txt")
#longest_paragraph("pg84.txt")
#longest_word("pg84.txt")
longest_item("pg84.txt", "word")
