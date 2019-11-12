# Understand the problem
# Input:
# 1 to many words
# Output:
# number of chars, not including whitespace
#
# Test Cases
# walk = 4 chars
# walk, don't run = 13 chars
#
# data structure
# array
# LS: string
#
# Algorithm
# split words by spaces and store in array
# for each word in array, add the number of characters (reduce?)
# LS:
# parse string
# delete spaces
# count characters

puts 'Please write word or multiple words:'
words = gets.chomp

# an example of clever code. I like what it does but it is
# unnecessarily complex
number_of_chars = words.split
                       .map { |word| word.size }
                       .reduce {|sum, number_of_chars| sum + number_of_chars }

# LaunchSchool solution (in this case it's way easier than what I did)
# number_of_chars = words.delete(' ').size

puts "There are #{number_of_chars} characters in #{words}"
