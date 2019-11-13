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
def prompt(message)
  puts "==> #{message}"
end

prompt 'Enter the first number:'
first = gets.chomp.to_i

prompt 'Enter the second number:'
second = ''
loop do
  second = gets.chomp.to_i
  break if second != 0
  puts 'second number can\'t be 0. Enter the second number:'
end

prompt("#{first} + #{second} = #{first + second}")
prompt("#{first} - #{second} = #{first - second}")
prompt("#{first} * #{second} = #{first * second}")
prompt("#{first} / #{second} = #{first / second}")
prompt("#{first} % #{second} = #{first % second}")
prompt("#{first} ** #{second} = #{first**second}")

# would be cool if you could use eval. Apparently it's a bad idea
# operations = %w(+ - * / % **)
#
# operations.each do |operation|
#   formula = "#{first} #{operation} #{second}"
#   result = eval(formula)
#   puts formula + " = #{format('%.3f', result)}"
# end
