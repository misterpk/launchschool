#problem
# input - integer
# output - the square of the sums - sum of squares
# tests
# sum_square_difference(3) == 22
#   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
#sum_square_difference(10) == 2640
#sum_square_difference(1) == 0
#sum_square_difference(100) == 25164150
# data structures
# numbers
# algorithm
# calculate sum then square
# total = 0
# 1.upto(number)
# total += i
# i ** 2
# sum each then add
# total = 0
# 1.up to number
# total += i ** 2
def square_sum(number)
  (1..number).to_a.reduce(&:+) ** 2
end

def sum_of_squares(number)
  (1..number).to_a.map { |number| number ** 2}.reduce(&:+)
end

def sum_square_difference(number)
  square_sum(number) - sum_of_squares(number)
end

puts sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
