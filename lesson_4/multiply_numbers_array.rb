def multiply(array_of_numbers, multiplier)
  multiplied_array = []
  counter = 0

  loop do
    break if counter == array_of_numbers.size
    multiplied_array << array_of_numbers[counter] * multiplier
    counter += 1
  end

  multiplied_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3)
