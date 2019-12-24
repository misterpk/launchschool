#problem
# determine if a triangle is right, acute or obtuse
# input - 3 integers in degrees
# output - triangle type as symbol
# tests
# triangle(60, 70, 50) == :acute
#triangle(30, 90, 60) == :right
#triangle(120, 50, 10) == :obtuse
#triangle(0, 90, 90) == :invalid
#triangle(50, 50, 50) == :invalid
# data structure
# numbers
# algorithm
# check if total is 180
# - check if one is 90
# -- return :right
# - check if one is > 90
# --return :obtuse
# - else
# -- return :acute
# else return :invalid
require 'byebug'

TRIANGLE_ANGLE_SUM = 180
RIGHT_ANGLE = 90

def triangle(degree1, degree2, degree3)
  degrees = [degree1, degree2, degree3]
  if !degrees.include?(0) && degrees.sum == TRIANGLE_ANGLE_SUM
    if degrees.include?(RIGHT_ANGLE)
      return :right
    elsif degrees.all? { |angle| angle < 90 }
      return :acute
    else
      return :obtuse
    end
  else
    return :invalid
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
