def multiply(first, second)
  first * second
end

def square(number)
  multiply(number, number)
end

# TODO: think about how to use recursion to solve this problem
def power_to_the_n(number, power)
  return 1 if power == 0
  result = 1
  while power > 0
    result = multiply(result, number)
    power -= 1
  end
  result
end

puts square(5) == 25
puts square(-8) == 64

puts power_to_the_n(2, 3) == 8
puts power_to_the_n(2, 4) == 16
puts power_to_the_n(5, 3) == 125
puts power_to_the_n(10, 0) == 1
