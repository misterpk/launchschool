#problem
# determine the number of friday the 13ths in a year
# input - year as integer
# output - return the number of friday the 13ths
# tests
# friday_13th(2015) == 3
#friday_13th(1986) == 1
#friday_13th(2019) == 2
# data structures
# number
# algorithm
# construct a time object for the 13th of each month and ask if it's a friday
require 'date'

MONTHS_WITH_30_DAYS = [4, 6, 9, 11]
MONTHS_WITH_31_DAYS = [1, 3, 5, 7, 8, 10, 12]

def friday_13th(year)
  count = 0
  1.upto(12) do |num|
    count += 1 if Date.new(year, num, 13).friday?
  end
  count
end

def leap_year?(year)
  Date.new(year).leap?
end

def five_fridays_in_a_month?(year, month, leap_year=false)
  if leap_year && month == 2
    return Date.new(year, month, 01).friday?
  end

  if MONTHS_WITH_30_DAYS.include?(month)
    [Date.new(year, month, 01), Date.new(year, month, 02)].any? { |date| date.friday? }
  elsif MONTHS_WITH_31_DAYS.include?(month)
    [Date.new(year, month, 01), Date.new(year, month, 02), Date.new(year, month, 03)].any? { |date| date.friday? }
  else
    nil
  end
end

def number_of_5_friday_months(year)
  count = 0
  leap_year = leap_year?(year)
  1.upto(12) do |month|
    count += 1 if five_fridays_in_a_month?(year, month, leap_year)
  end
  count
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
puts number_of_5_friday_months(2021)
