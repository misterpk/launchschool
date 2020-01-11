#problem
# display an 8 pointed star in an n x n grid
# 
# tests - see exercise
# 
# data structures
# string
require 'byebug'

def top_half!(number, string, start_index, end_index, midpoint)
  midpoint.times do
    number.times do |index|
      build_string!(string, index, start_index, end_index, midpoint)
      break if index == end_index
    end
    start_index += 1
    end_index -= 1
  end
end

def middle!(string, number)
  number.times do |index|
    if index == number - 1
      string << "*\n"
      break
    else
      string << "*"
    end
  end
end

def bottom_half!(number, string, start_index, end_index, midpoint)
  midpoint.times do
    number.times do |index|
      build_string!(string, index, start_index, end_index, midpoint)
      break if index == end_index
    end
    start_index -= 1
    end_index += 1
  end
end

def build_string!(string, index, start_index, end_index, midpoint)
  string << case index
            when start_index
              "*"
            when midpoint
              "*"
            when end_index
              "*\n"
            else
              " "
            end
end

def stars(number)
  left_index = 0
  right_index = number - 1
  midpoint = number / 2
  star = ''

  # top half
  top_half!(number, star, left_index, right_index, midpoint)

  # middle line
  middle!(star, number)

  # set index to the correct position
  left_index = midpoint - 1
  right_index = midpoint + 1

  # bottom half
  bottom_half!(number, star, left_index, right_index, midpoint)

  star
end

puts stars(7)
puts
puts
puts stars(9)