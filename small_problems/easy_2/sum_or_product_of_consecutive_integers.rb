# Understand the problem
# input:
# integer > 0
# s for sum, p for product - string
# output:
# the sum or product of all numbers between 1 and the entered integer
#
# Test Cases
# input:
# 5, 's' => 15
# 6, 'p' => 720
#
# Data Structure
# array
#
# Algorithm
# if s: populate array with number then reduce to sum
# if p: populate array with number then reduce to product
def create_array(integer)
  array_of_ints = []
  integer.times do |i|
    array_of_ints[i] = i + 1
  end
  array_of_ints
end

def sum(array)
  array.reduce { |sum, int| sum + int }
end

def product(array)
  array.reduce { |product, int| product * int }
end

operator_table = {
  's' => 'sum',
  'p' => 'product'
}

STARTING_INT = 1

puts '>> Please enter an integer greater than 0:'
int = 0
loop do
  int = gets.to_i
  break if int > 0
  puts 'Invalid input. Please enter an integer greater than 0:'
end

puts '>> Enter \'s\' to compute the sum, \'p\' to compute the product.'
operator = ''
loop do
  operator = gets.chomp
  break if operator == 's' || operator == 'p'
  puts 'Invalid input. Please enter either \'s\' for the sum or \'p\' for ' \
  'the product'
end

array_of_ints = create_array(int)
value = ''

if operator == 's'
  value = sum(array_of_ints)
elsif operator == 'p'
  value = product(array_of_ints)
end

puts "The #{operator_table[operator]} of the integers between  " \
     "#{STARTING_INT} and #{int} is #{value}"

# launch school code
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end
#
# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end
#
# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i
#
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp
#
# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end
