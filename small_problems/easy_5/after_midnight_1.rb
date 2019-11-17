# problem
# input
# time in  minute based format - integer pos is after midnight,
# neg is before midnight
# output
# the time in hh:mm format - string
#
# tests
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"
#
# data structures
# string
#
# algorithm
# 0 = 24:60
# hour_value = number / 60 % 24
# minutes_value = number % 60
# concat strings together
require 'byebug'
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  # hour_value = (delta_minutes / MINUTES_PER_HOUR) % HOURS_PER_DAY
  # minute_value = delta_minutes % MINUTES_PER_HOUR
  # format('%.2d:%.2d', hour_value, minute_value)
  # LS solution
  # That works because you are basically getting the remainder of minutes
  # after the days have been pulled out, that minutes can be used to calculate
  # the time
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# TODO: How would you approach this problem if you were allowed to use
# ruby's Date and Time classes? Suppose you also needed to consider the
# day of week? (Assume that delta_minutes is the number of minutes before
# or after midnight between Saturday and Sunday; in such a method, a
# delta_minutes value of -4231 would need to produce a return value of
# Thursday 01:29.)
