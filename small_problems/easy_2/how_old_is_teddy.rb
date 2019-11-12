age = rand(20..200)
puts "Enter a name:"
name = gets.chomp

if name.strip.empty?
  puts "Teddy is #{age} years old!"
else
  puts "#{name} is #{age} years old!"
end
