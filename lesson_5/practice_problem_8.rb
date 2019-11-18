hsh = { first: %w(the quick), second: %w(brown fox), third: ['jumped'],
        fourth: %w(over the lazy dog) }

hsh.each do |_, v|
  v.each do |word|
    word.chars.each do |char|
      puts char if char.match(/[aeiou]/)
    end
  end
end
