# problem
# input
# year - integer
# output
# century (century number + st/nd/rd/th) - string
#
# tests
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
#
# data structure
# string?
#
# algorithm
# calculate century number
# if year % 100 == 0
#   century = year / 100
# else
#   century = year / 100 + 1
# calculate st/nd/rd/th
# st = 1st, 21st, 31st, etc
# nd = 2nd, 22nd, 32nd, etc
# rd = 3rd, 23rd, 33rd, etc
# th = 4th, 11-20th, 24-30th
# get the last 2 digits of century, unless 11, 12, 13, 14:
# 2 digits % 10
# 1 = st, 2=nd, 3 = rd, 4-10 = st
# else
# st
def calculate_century(year)
  (year % 100).zero? ? year / 100 : year / 100 + 1
end

def calculate_suffix(century)
  last_2_digits = century % 100
  if last_2_digits >= 11 && last_2_digits <= 13
    return "th"
  end

  last_digit = last_2_digits % 10
  case last_digit
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else "th"
  end
end

def century(year)
  century = calculate_century(year)
  century.to_s + calculate_suffix(century)
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
puts century(1) == '1st'
puts century(100) == '1st'
puts century(101) == '2nd'
puts century(133) == '2nd'
puts century(245) == '3rd'
puts century(1052) == '11th'
puts century(1152) == '12th'
puts century(1252) == '13th'
puts century(2012) == '21st'
puts century(2112) == '22nd'
puts century(22222) == '223rd'
puts century(22512) == '226th'
