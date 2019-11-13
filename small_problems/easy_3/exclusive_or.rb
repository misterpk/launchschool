# problem
# take two conditionals and return true only if one is true
# input - 2 conditionals - boolean
# output - true if 1 and only 1 is true - boolean
#
# tests
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false
#
# data structures
# boolean
#
# algorithm
# evaluate both conditionals
# if 1 is true return true
# else return false

def xor?(bool1, bool2)
  return true if bool1 && !bool2 || !bool1 && bool2
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
