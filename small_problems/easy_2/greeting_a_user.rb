# Understand the problem
# input:
# name - string
# output:
# if name without ! - normal greeting - string
# if name with ! - yelling greeting - string
#
# Test Cases
# Bob  => Hello Bob.
# Bob! => HELLO BOB. WHY ARE WE SCREAMING?
#
# Data Structure
# string
#
# Algorithm
# if last char of string is ! remove ! and display yell greeting
# otherwise display normal greeting

puts('What is your name?')
name = gets.chomp!

if name[-1] == '!'
  name.chop!
  puts("HELLO #{name.upcase}. WHY ARE WE SCREAMING?")
else
  puts("Hello #{name}.")
end
