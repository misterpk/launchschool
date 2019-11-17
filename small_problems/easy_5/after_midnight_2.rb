# problem
# input
# time in hh:mm (24h format) - string
# output
# integer - time before or after midnight
#
# tests
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0
#
# data structure
#
#
# algorithm
# split string by ":"
# after midnight:
# minutes = (hours * hour_value) + minutes
# before_midnight
# minutes = (hours * hours_value) - minutes

# MINUTES_PER_HOUR = 60
#
# def after_midnight(time)
#   hours_minutes = time.split(':').map(&:to_i)
#   if hours_minutes[0] == 24
#     0
#   else
#     hours_minutes[0] * MINUTES_PER_HOUR + hours_minutes[1]
#   end
# end
#
# def before_midnight(time)
#   hours_minutes = time.split(':').map(&:to_i)
#   if hours_minutes[0] == 24
#     0
#   else
#     hours_minutes[0] * MINUTES_PER_HOUR - hours_minutes[1]
#   end
# end
# LS Solution
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

# TODO: How would these methods change if you were allowed to use the Date and
# Time classes?
