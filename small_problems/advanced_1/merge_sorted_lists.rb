require 'byebug'

def merge(array1, array2)
  if array1.empty?
    return array2
  elsif array2.empty?
    return array1
  end

  new_sorted_array = []
  array2_index = 0

  array1.each_index do |index|
    if array2[array2_index].nil?
      new_sorted_array.push(array1.slice(array1[index...array1.size]))
    elsif array1[index].nil?
      new_sorted_array.push(array2.slice(array2[index...array2.size]))
    elsif array1[index] < array2[array2_index]
      new_sorted_array.push(array1[index])
    elsif array1[index] > array2[array2_index]
      until array1[index] < array2[array2_index]
        new_sorted_array.push(array2[array2_index])
        array2_index += 1
        break if array2[array2_index].nil?
      end
      new_sorted_array.push(array1[index])
    end
  end
  new_sorted_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
