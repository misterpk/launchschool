#problem
# input - nested array 3x3
# output - array transposed, meaning columns to rows
#
# tests
# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
#
# data structures - arrays
#
# algorithm
require 'byebug'

def transpose(matrix)
  # LS solution
  # def transpose(matrix)
  #   result = []
  #   (0..2).each do |column_index|
  #     new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
  #     result << new_row
  #   end
  #   result
  # end
  new_matrix = [[], [], []]

  matrix.size.times do |old_matrix_row|
    matrix[old_matrix_row].size.times do |new_matrix_row|
      new_matrix[new_matrix_row][old_matrix_row] =
        matrix[old_matrix_row][new_matrix_row]
    end
  end

  new_matrix
end

def transpose!(matrix)
  # all values will be processed after processing the last element in the 2nd
  # to the last nested array
  (matrix.size - 1).times do |old_matrix_row|
    # I noticed that the element at [n][n] doesn't change, so I set the
    # left index to that value and process from there
    left_index = old_matrix_row
    matrix[old_matrix_row].size.times do |new_matrix_row|
      # elements to the left of left index have already been processed
      next if left_index >= new_matrix_row
      left_index += 1

      old_row_value = matrix[old_matrix_row][left_index]
      new_row_value = matrix[left_index][old_matrix_row]
      matrix[old_matrix_row][left_index] = new_row_value
      matrix[left_index][old_matrix_row] = old_row_value
    end
  end

  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

transpose!(matrix)
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

matrix2 = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16]
]

p transpose!(matrix2)
