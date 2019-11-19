ds = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_ds = ds.map do |hash|
  new_hash = {}
  hash.each do |k, v|
    new_hash[k] = v + 1
  end
  new_hash
end

p ds
p new_ds

# alternate LS solution
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   arr << incremented_hash
# end
# # => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]
