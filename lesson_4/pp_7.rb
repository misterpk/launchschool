require 'pry'

statement = "The Flintstones Rock"
array_of_chars = statement.split("").reject! { |char| char == " " }
unique_chars = array_of_chars.uniq

char_counts_hash = {}

unique_chars.each { |char| char_counts_hash[char] = 0 }

char_counts_hash.each do |key, _value|
  char_counts_hash[key] = array_of_chars.count(key)
end

puts char_counts_hash

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

puts result

puts char_counts_hash == result
