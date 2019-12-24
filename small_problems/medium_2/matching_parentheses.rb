#problem
# input - string with parentheses
# output - true if parentheses match, false if not
# tests
# balanced?('What (is) this?') == true
#balanced?('What is) this?') == false
#balanced?('What (is this?') == false
#balanced?('((What) (is this))?') == true
#balanced?('((What)) (is this))?') == false
#balanced?('Hey!') == true
#balanced?(')Hey!(') == false
#balanced?('What ((is))) up(') == false
# data structures
# string and stack
# algorithm
# split string to char array
# for each item in array
# - if open parens, push to stack
# - if closed parens, pop from stack
# - if pop returns nil, false
#
# LS solution
#def balanced?(string)
#  parens = 0
#  string.each_char do |char|
#    parens += 1 if char == '('
#    parens -= 1 if char == ')'
#    break if parens < 0
#  end
#
#  parens.zero?
#end

def balanced?(string)
  parens_stack = []
  char_array = string.chars
  char_array.each do |char|
    case char
    when '('
      parens_stack.push(char)
    when '['
      parens_stack.push(char)
    when '{'
      parens_stack.push(char)
    when ')'
      return false if parens_stack.pop != '('
    when ']'
      return false if parens_stack.pop != '['
    when '}'
      return false if parens_stack.pop != '{'
    end
  end
  parens_stack.empty?
end

puts balanced?('{What [(is)] this?}') == true
puts balanced?('What is) this?') == false
puts balanced?('W[hat (is thi}s?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
