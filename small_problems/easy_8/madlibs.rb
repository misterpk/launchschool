# problem
# input
# prompt for noun, verb, adverb and adjective
# output
# inject into a story
#
# tests
# Enter a noun: dog
#Enter a verb: walk
#Enter an adjective: blue
#Enter an adverb: quickly
#
#Do you walk your blue dog quickly? That's hilarious!
#
# data structures
# string
#
# algorithm
# Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious
puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
