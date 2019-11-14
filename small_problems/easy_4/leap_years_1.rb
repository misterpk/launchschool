# problem
# input
# year > 0
# output
# true if leap year, false if not
#
# tests
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true
#
# data structure
# numbers
#
# algorithm
# leap year = year mod 4 == 0  && year mod 100 != 0
# or year mod 400 == 0
require 'byebug'
def leap_year?(year)
  # original answer
  # (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  # cleanest I could come up with
  # if year % 4 == 0
  #   if year % 100 == 0
  #     return year % 400 == 0
  #   end
  #   return true
  # end
  # false
  # This one is AWESOME
  if year % 4 == 0
    return true unless year % 100 == 0
    return true if year % 400 == 0
  end
  false
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
