# problem
# input
# string
# output
# return new string with everyother letter capitalized
#
# tests
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
#
# data structure
# string and array
#
# algorithm
# string.char
# each char, capitalize every other
def staggered_case_include_non_alpha(string, upcase_or_downcase="upcase")
  # new_array = []
  # string.chars.each_with_index do |char, index|
  #   new_array[index] = index.even? ? char.upcase : char.downcase
  # end
  # new_array.join
  result = ''
  need_upper = upcase_or_downcase == "upcase"
  string.chars.each do |char|
    result += if need_upper
                char.upcase
              else
                char.downcase
              end
    need_upper = !need_upper
  end
  result
end

puts staggered_case_include_non_alpha('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case_include_non_alpha('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case_include_non_alpha('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
