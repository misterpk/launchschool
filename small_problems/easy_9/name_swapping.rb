#problem
# input - first and last name - string
# output - last, first name - string
#
# tests
# swap_name('Joe Roberts') == 'Roberts, Joe'
#
# data structures
# string and array
#
# algorithm
# split into word_array
# word_array[1], word_array[0]
def swap_name(name)
  #name_array = name.split(' ')
  #"#{name_array[1]}, #{name_array[0]}"
  name.split(' ').reverse.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
