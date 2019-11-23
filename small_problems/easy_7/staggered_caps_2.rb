# problem
# input
# string
# output
# new string with every other letter capitalized
# ignore spaces and non-alpha when stagger casing
#
# tests
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
#
# data structure
# string array maybe?
#
# algorithm
# keep track of case
# if alpha stagger case
# if not push as is
require './staggered_caps_1'

def staggered_case(string, ignore_non_alpha=true)
  result = ''
  if ignore_non_alpha
    need_upper = true
    string.chars.each do |char|
      if char =~ /[a-z]/i
        result += if need_upper
                    char.upcase
                  else
                    char.downcase
                  end
        need_upper = !need_upper
      else
        result += char
      end
    end
  else
    result = staggered_case_include_non_alpha(string, "upcase")
  end
  result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
