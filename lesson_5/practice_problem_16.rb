# HEX_VALUES = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
#
# string = ''
#
# 32.times do
#   string += HEX_VALUES.sample
# end
#
# puts string
# puts "#{string.slice(0, 8)}-#{string.slice(8, 4)}-#{string.slice(12, 4)}-" \
#      "#{string.slice(16, 4)}-#{string.slice(20, 12)}"
#
# LS solution
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

puts generate_UUID
