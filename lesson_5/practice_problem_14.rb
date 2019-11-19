hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
expected_result = [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

arr = []

hsh.each_value do |value|
  if value[:type] == 'fruit'
    arr.push(value[:colors].map! { |color| color.capitalize })
  elsif value[:type] == 'vegetable'
    arr.push(value[:size].upcase)
  end
end

p arr
puts expected_result == arr

# LS solution
# hsh.map do |_, value|
#   if value[:type] == 'fruit'
#     value[:colors].map do |color|
#       color.capitalize
#     end
#   elsif value[:type] == 'vegetable'
#     value[:size].upcase
#   end
# end
