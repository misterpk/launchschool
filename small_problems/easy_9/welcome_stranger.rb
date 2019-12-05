#problem
# input - array (2 or more elements, combined with spaces makes a name)
# hash, title and occupation
# output
# return a greeting that uses the persons full name, mentions the title and occupation
# tests
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
#
# data structure - array and hash
#
# algorithm
# join array with space
# string replace, hash[:title], hash[:occupation]
require 'byebug'

def greetings(array, hash)
  "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} " \
  "#{hash[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
