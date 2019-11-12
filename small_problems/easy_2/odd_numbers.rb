# Understand the problem
# Print out all numbers from 1 through 99
#
# Test Cases
# 1
# 3
# 5
# etc
#
# Data structures
# none
#
# Algorithm
# loop from 1 to 99 and puts number.odd?

# 100.times { |index| puts index if index.odd? }
# (1..99).each { |index| puts index if index.odd? }
counter = 1

while counter < 100
  puts counter
  counter += 2
end
# 1.upto(99) { |index| puts index if index.odd? }
# array = []
# counter = 0
#
# while array.size < 99
#   array[counter] = counter + 1
#   counter += 1
# end
#
# array = array.select(&:odd?)
#
# array.each { |number| puts number }
