# Understand the Problem
# input: length and width of room in feet - string
# output: area of the room in square feet, square inches, square cm - string
#   - all to 2 decimals
# validation not needed

# Examples / Test Cases
# display_area(10, 7) => The area of the room is 70.0 square feet (10080 square inches - 65032.13 square cm).

# Data Structure
# numbers

# Algorithm
# area = (length * width).round(1)
# square_feet = (area * 10.7639).round(2)

SQUARE_FEET_TO_SQUARE_INCHES = 144
SQUARE_INCHES_TO_SQUARE_CM = 6.452

def calculate_area(length, width)
  length * width
end

def convert_square_feet_to_square_inches(area)
  area * SQUARE_FEET_TO_SQUARE_INCHES
end

def convert_square_inches_to_square_cm(area)
  area * SQUARE_INCHES_TO_SQUARE_CM
end

puts("Enter the length of the room in feet:")
length = gets.to_f

puts("Enter the width of the room in feet:")
width = gets.to_f

area = calculate_area(length, width).round(2)
area_in_square_inches = convert_square_feet_to_square_inches(area).round(2)
area_in_square_cm =
  convert_square_inches_to_square_cm(area_in_square_inches).round(2)
puts("The area of the room is #{area} sq feet (#{area_in_square_inches} " \
     "square feet - #{area_in_square_cm} sq cm)")
