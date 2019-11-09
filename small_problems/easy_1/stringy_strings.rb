def stringy(integer, start_value = 1)
  new_string = ''
  (0...integer).each do |index|
    if start_value == 1
      new_string << (index.even? ? '1' : '0')
    elsif start_value == 0
      new_string << (index.even? ? '0' : '1')
    end
  end
  new_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
