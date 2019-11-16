# problem
# input
# number - string to int
# output
# the sum of all the multiples of 3 and 5 between 1 and the number
# number passed in assumed to be > 1
#
# tests
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
#
# data structures
# store multiples in array
#
# algorithm
# multiples of 3 - start at 3, += 3 and push to array until >= to the number
# multiples of 5  - start at 5, += 5 and push to array until >= to the number
# concat arrays then uniq (dedup)
require 'byebug'

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(number)
  array_of_multiples = (1..number).select do |num|
    multiple?(num, 3) || multiple?(num, 5)
  end
  array_of_multiples.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

# LS answer
# def multiple?(number, divisor)
#   number % divisor == 0
# end
#
# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end
#
# my first answer
# def multiples_of_3(number)
#   array_of_multiples = []
#   counter = 3
#   while counter <= number
#     array_of_multiples.push(counter)
#     counter += 3
#   end
#   array_of_multiples
# end
#
# def multiples_of_5(number)
#   array_of_multiples = []
#   counter = 5
#   while counter <= number
#     array_of_multiples.push(counter)
#     counter += 5
#   end
#   array_of_multiples
# end
#
# def multisum(number)
#   concat_arrays = multiples_of_3(number) + multiples_of_5(number)
#   concat_arrays.uniq!
#   concat_arrays.sum
# end
