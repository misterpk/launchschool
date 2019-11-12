# Understand the problem
# Input:
# 2 positive integers
# Output:
# print the results of +, -, *, /, %, **
#
# Test Cases
# 23, 17
# 40, 6, 391, 1, 6, 141050039560662968926103
#
# Data structure
# store operations in array
#
# Algorithm
# take 2 numbers then loop through array to eval and print

puts 'Enter the first number:'
first = gets.chomp

puts 'Enter the second number:'
second = ''
loop do
  second = gets.chomp
  break if second.to_i != 0
  puts 'second number can\'t be 0. Enter the second number:'
end

operations = %w(+ - * / % **)

operations.each do |operation|
  formula = "#{first} #{operation} #{second}"
  result = eval(formula)
  puts formula + " = #{format('%.3f', result)}"
end
