# Understand the Problem
# input:
# bill - money - float
# percent_tip - percentage - float
# output:
# tip - money - 2 decimals
# total - money - 2 decimals
#
# Examples / Test Cases
# input:
# bill = 200
# percent_tip = 15
# output:
# tip = 30
# total = 230
#
# Data Structure
# numbers
#
# Algorithm
# tip = bill * (tip/100)
# total = bill + tip

puts('What is the bill?')
bill = gets.to_f.round(2)

puts('What is te tip percentage?')
percent_tip = gets.to_f

tip = (bill * (percent_tip / 100)).round(2)
total = (bill + tip).round(2)

puts("The tip is $#{format('%.2f', tip)}")
puts("The total is $#{format('%.2f', total)}")
