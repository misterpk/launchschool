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

def triangle(side1, side2, side3)
  if side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
    if side1 == side2 && side2 == side3
      return :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      return :isosceles
    else
      return :scalene
    end
  else
    return :invalid
  end
end

# LS solution
#def triangle(side1, side2, side3)
#  sides = [side1, side2, side3]
#  largest_side = sides.max
#
#  case
#  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
#    :invalid
#  when side1 == side2 && side2 == side3
#    :equilateral
#  when side1 == side2 || side1 == side3 || side2 == side3
#    :isosceles
#  else
#    :scalene
#  end
#end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
