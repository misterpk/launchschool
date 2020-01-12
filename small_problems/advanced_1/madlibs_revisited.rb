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

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun: NOUNS.sample,
                      verb: VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb: ADVERBS.sample)
  end
end