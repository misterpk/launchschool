def fibonacci(number)
  return 0 if number == 0
  return 1 if number == 1
  fibonacci(number - 1) + fibonacci(number - 2)
end
#
#def fibonacci_tail(nth, acc1, acc2)
#  if nth == 1
#    acc1
#  elsif nth == 2
#    acc2
#  else
#    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
#  end
#end
#
#def fibonacci(nth)
#  fibonacci_tail(nth, 1, 1)
#end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
puts fibonacci(50)
