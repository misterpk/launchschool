#problem
# determine type of triangle
# input - 3 side lengths as integer
# output - type of traingle as a symbol
# tests
# triangle(3, 3, 3) == :equilateral
#triangle(3, 3, 1.5) == :isosceles
#triangle(3, 4, 5) == :scalene
#triangle(0, 3, 3) == :invalid
#triangle(3, 1, 1) == :invalid
# data structures
# numbers
# algorithm
# invalid 1 + 2 > 3 && 1 + 3 > 2 && 2 + 3 > 1
# equilateral 1 == 2 == 3
# isoceles 1 == 2 || 1 == 3 || 2 == 3
# scalene else
