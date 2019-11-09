require 'pry'

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def determine_age_group(age)
  age_group = ""
  if age > 0 && age <= 17
    age_group = "kid"
  elsif age > 17 && age <= 64
    age_group = "adult"
  elsif age >= 65
    age_group = "senior"
  end
  age_group
end

def determine_age_group2(age)
  case age
  when 0..17
    "kid"
  when 18..64
    "adult"
  else
    "senior"
  end
end

munsters.each do |_munster, data|
  data["age_group"] = determine_age_group2(data["age"])
end

puts munsters
