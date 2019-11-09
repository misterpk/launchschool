def count_occurrences(array)
  count_hash = {}
  array.each do |value|
    value.downcase!
    count_hash[value] = array.count(value)
  end
  count_hash.each do |value, count|
    puts "#{value} => #{count}"
  end
end

vehicles = %w(car car truck car SUV truck motorcycle Motorcycle car Truck)

count_occurrences(vehicles)
