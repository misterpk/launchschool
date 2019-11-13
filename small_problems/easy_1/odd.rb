def odd?(number)
  # number % 2 == 1
  number.remainder(2).abs == 1
end

puts odd?(2)    # => false
puts odd?(5)    # => true
puts odd?(-17)  # => true
puts odd?(-8)   # => false
puts odd?(0)    # => false
puts odd?(7)    # => true
