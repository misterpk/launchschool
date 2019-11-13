# Understand the Problem
# input: length and width of room in meters - string
# output: area of the room in square meters and square feet - string
#   - sq meters to 1 decimal, rounded
#   - sq feet to 2 decimals, rounded
# validation not needed

# Examples / Test Cases
# display_area(10, 7)       => The area of the room is 70.0 square meters
# (753.47 square feet).
# display_area(5, 8)        => The area of the room is 40.0 square meters
# (430.56 square feet).

# Data Structure
# numbers

# Algorithm
# area = (length * width).round(1)
# square_feet = (area * 10.7639).round(2)

SQUARE_FEET_IN_SQUARE_METER = 10.7639

def calculate_area(length, width)
  (length.to_f * width.to_f).round(1)
end

def convert_square_meters_to_square_feet(area)
  (area * SQUARE_FEET_IN_SQUARE_METER).round(2)
end

puts("Enter the length of the room in meters:")
length = gets.chomp.to_i

puts("Enter the width of the room in meters:")
width = gets.chomp.to_i

area = calculate_area(length, width)
area_in_square_feet = convert_square_meters_to_square_feet(area)
puts("The area of the room is #{area} sq meters (#{area_in_square_feet} " \
     "square feet)")
