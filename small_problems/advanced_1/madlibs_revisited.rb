#problem
# read in a file
# output - like a madlib, jumble the words
#
# tests - none
#
# data structure
# arrays
# algorithm
# read file
# split the file by line
# split the line by word
# if word == adverb, noun, verb or adjective, replace with random sample
# from array
require 'byebug'

WORD_TYPES = %w(adverb noun adjective verb)
ADVERBS = %w(then sheepishly urgently yawningly openly similarly briskly twice
             honestly gratefully crossly originally frantically especially
             excitedly far eagerly seldom quirkily soon)
NOUNS = %w(brother front wren soup quiver sheet house night knot shake roll mist
           rainstorm sponge property brake sneeze loss holiday laugh)
ADJECTIVES = %w(adaptable foregoing inexpensive woebegone futuristic breakable
                ugly automatic ubiquitous acidic envious macho anxious defiant
                childlike disastrous feigned ultra bewildered far)
VERBS = %w(bombs sails rubs levels pines grates trots scrapes paints repeats
           arrives shaves admits invents sighs excuses cleans scares stitches
           crawls)

file = File.open('madlibs.txt')
lines = file.readlines.map(&:chomp)
new_lines = []
lines.each do |line|
  new_line = ""
  words = line.split
  words.each do |word|
    new_line << case word
                when "adverb"
                  ADVERBS.sample + " "
                when "noun"
                  NOUNS.sample + " "
                when "adjective"
                  ADJECTIVES.sample + " "
                when "verb"
                  VERBS.sample + " "
                else
                  word + " "
                end
  end
  new_lines << new_line.strip
end
new_lines.each { |line| p line }