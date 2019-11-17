# problem
# input
# short line of text - string
# output
# text in a box - string
#
# tests
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#
# data structure
# string
#
# algorithm
# vertical is 2 lines, text, 2 lines
# horizontal1 is + number_of_chars + 2, +
# horizontal2 is | then number_of_chars + 2, |
# horizontal3 is '| ' + number of chars + ' |'
# then inverse
require 'byebug'

MAX_CHARS_PER_LINE = 76

def print_in_box(words)
  number_of_chars = words.length
  top_bottom_border = "+#{'-' * (number_of_chars + 2)}+"
  spacer = "|#{' ' * (number_of_chars + 2)}|"
  message = "| #{words} |"

  puts top_bottom_border
  puts spacer
  puts message
  puts spacer
  puts top_bottom_border
end

def print_with_truncation(words)
  words = if words.length > 76
            words.slice(0, 76)
          else
            words
          end
  print_in_box(words)
end

def split_lines(words)
  until words.empty?
    if words.length > MAX_CHARS_PER_LINE
      line = words.slice(0, MAX_CHARS_PER_LINE)
      puts "| #{line} |"
    else
      line = words.slice(0..-1)
      puts "| #{line}#{' ' * (MAX_CHARS_PER_LINE - line.length)} |"
    end
    words.slice!(0, line.length)
  end
end

def print_splitting_lines(words)
  if words.length > MAX_CHARS_PER_LINE
    top_bottom_border = "+#{'-' * (MAX_CHARS_PER_LINE + 2)}+"
    spacer = "|#{' ' * (MAX_CHARS_PER_LINE + 2)}|"

    puts top_bottom_border
    puts spacer
    split_lines(words)
    puts spacer
    puts top_bottom_border
  else
    print_in_box(words)
  end
end

# puts print_in_box('To boldly go where no one has gone before.')
# puts print_with_truncation('12345678901234567890123456789012345' \
# '6789012345678901234567890123456789012345678901234567890')
print_splitting_lines('1234567890123456789012345678901234567890' \
'1234567890123456789012345678901234567890123456789012345678901234567890' \
'1234567890123456789012345678901234567890123456789012345678901234567890' \
'1234567890123456789012345678901234567890123456789012345678901234567890')
