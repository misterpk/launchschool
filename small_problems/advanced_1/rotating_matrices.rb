require 'byebug'

def rotate90(matrix)
  number_of_rows = matrix.first.size
  number_of_columns = matrix.size
  result = Array.new(number_of_rows) { Array.new(number_of_columns) }

  original_column_number = 0
  (number_of_columns - 1).downto(0) do |column_index|
    (0...number_of_rows).each do |row_index|
      result[row_index][column_index] = matrix[original_column_number][row_index]
    end
    original_column_number += 1
  end

  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
