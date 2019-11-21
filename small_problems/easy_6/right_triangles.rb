# problem
# input
# positive integer
# output
# right triangle, with the last row having integer number of stars
#
# tests
# see example
#
# data structure
# string
#
# algorithm
# integer.times do
# number_of_spaces = integer - 1
# puts ' ' * number_of_spaces + "*" * integer - number_of_spaces
def triangle(number)
  number_of_spaces = number - 1
  number.times do
    puts (' ' * number_of_spaces) + ('*' * (number - number_of_spaces))
    number_of_spaces -= 1
  end
end

def upside_down_triangle(number)
  spaces = 0
  stars = number
  number.times do
    puts ('*' * stars) + (' ' * spaces)
    spaces += 1
    stars -= 1
  end
end

def corner_lower_right(number)
  spaces = number - 1
  stars = 1
  number.times do
    puts ('*' * stars) + (' ' * spaces)
    spaces -= 1
    stars += 1
  end
end

def corner_upper_right(number)
  spaces = 0
  stars = number
  number.times do
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

def triangle_angle_location(number, location)
  case location
  when 'lr'
    triangle(number)
  when 'ul'
    upside_down_triangle(number)
  when 'll'
    corner_lower_right(number)
  when 'ur'
    corner_upper_right(number)
  end
end

# triangle(5)
# triangle(9)
# upside_down_triangle(5)
triangle_angle_location(5, 'lr')
triangle_angle_location(5, 'ur')
triangle_angle_location(5, 'll')
triangle_angle_location(5, 'ul')
