def titleize(string)
  words = string.split(" ")
  words.map(&:capitalize!).join(" ")
end

def titleize2(string)
  string.split.map { |word| word.capitalize }.join(' ')
end

words = "the flintstones rock"

puts titleize(words)
puts titleize2(words)
