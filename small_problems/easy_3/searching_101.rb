# Understand the problem
# Input:
# 6 numbers from the user - String?
# Output:
# Is the 6th number included in the first five? - String
#
# Test Cases
# 25, 15, 20 17, 23, 17 - 17 included
# 25, 15, 20 17, 23, 18 - 18 not included
#
# Data Structure
# store numbers in array
#
# Algorithm
# array.include? 6th number?
def integer?(input)
  # could also do input.to_i.to_s == input but something with a
  # leading 0 ("00", "01", etc) will return false
  Integer(input)
rescue ArgumentError
  false
end

counter = 1
position = %w(1st 2nd 3rd 4th 5th last)
number = ''
array_of_numbers = []
loop do
  loop do
    puts "Enter the #{position[counter - 1]} number:"
    number = gets.chomp
    break if integer?(number)
    puts "Not a valid number"
  end
  array_of_numbers.push(number.to_i) if array_of_numbers.size < 5
  break if counter == 6
  counter += 1
end

message = if array_of_numbers.include?(number.to_i)
            "The number #{number} appears in #{array_of_numbers.inspect}"
          else
            "The number #{number} does not appear in " \
            "#{array_of_numbers.inspect}"
          end

puts message
