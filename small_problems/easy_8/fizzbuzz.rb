# problem
# input
# 2 arguments
# first starting number
# second ending number
# output
# print out all numbers between the 2 numbers:
# if divisible by 3 print "Fizz"
# if divisible by 5 print "Buzz"
# if divisible by both, print "Fizzbuzz"
#
# tests
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
#
# data structures
# numbers
#
# algorithms
# loop from number to end number
# if number % 3 && number % 5 print "FizzBuzz"
# if number % 5 print "Buzz"
# if number % 3 print "Fizz"
# else print number
require 'byebug'

def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

fizzbuzz(1, 15)
