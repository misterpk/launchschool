# problem
# input
# floating point number representing an angle between 0 and 360 degrees
# output
# returns a string that represents that number in degrees, minutes and seconds
# use degree symbol for degrees, single quote for minutes and double quote
# for seconds
# tests
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
#
# data structures
# numbers
#
# algorithm
#
# number to the left of the decimal is the degrees floor
# minutes multiply decimal by 60, use the whole number part
# seconds multiply the remaining decimal by 60
require 'byebug'

# DEGREE = "\xC2\xB0"
#
# def dms(float)
#   degrees = float.to_i
#   degrees_string = degrees.to_s
#   float_minutes = ((float - degrees) * 60).round(3)
#   minutes = float_minutes.to_i
#   minutes_string = format('%.2d', minutes)
#   seconds = ((float_minutes - minutes) * 60).round(3)
#   seconds_string = format('%.2d', seconds.round)
#   "%(#{degrees_string}#{DEGREE}#{minutes_string}'#{seconds_string}\")"
# end
#
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# puts dms(30) == "%(30°00'00\")"
# puts dms(76.73) == "%(76°43'48\")"
# puts dms(254.6) == "%(254°36'00\")"
# puts dms(93.034773) == "%(93°02'05\")"
# puts dms(0) == "%(0°00'00\")"
# puts dms(360) == "%(360°00'00\")" || dms(360) == "%(0°00'00\")"
# TODO: Since degrees are normally restricted to the range 0-360, can you modify
# the code so it returns a value in the appropriate range when the input is less
# than 0 or greater than 360?
# dms(400) == %(40°00'00")
# dms(-40) == %(320°00'00")
# dms(-420) == %(300°00'00")
