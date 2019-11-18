munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# male_munsters = munsters.select do |_name, data|
#   data["gender"] == "male"
# end
#
# puts male_munsters
#
# sum = 0
# male_munsters.each do |_name, data|
#   sum += data["age"]
# end
#
# puts sum

# LS solution
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

puts total_male_age # => 444
