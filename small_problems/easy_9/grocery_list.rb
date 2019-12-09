#problem
# input - grocery list with quantity, nested array
# output - array with the right number of each item
#
# tests
# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#  ["apples", "apples", "apples", "orange", "bananas","bananas"]
#
# data structures
# array
#
# algorithm
# for each item in the list,
# add item to new array, list[1] times
def buy_fruit(grocery_list)
  new_array = []
  grocery_list.each do |item|
    item[1].times { new_array << item[0] }
  end
  new_array
  # LS solution
  # list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]
