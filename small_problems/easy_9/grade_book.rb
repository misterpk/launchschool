#problem
# input - 3 grades - integers
# output - return letter grade associated with average score
#
# tests
# get_grade(95, 90, 93) == "A"
#get_grade(50, 50, 95) == "D"
#
# data structures
# numbers, array, hash
#
# algorithm
# create hash with min values for grade
# calculate average score
# check average against hash
# return key
def get_grade(grade1, grade2, grade3)
  grades_min_score = {
    a: 90,
    b: 80,
    c: 70,
    d: 60,
    f: 0
  }
  grades = [grade1, grade2, grade3]

  average = average(grades)

  case
  when average >= grades_min_score[:a] && average <= 100
    "A"
  when average >= grades_min_score[:b]
    "B"
  when average >= grades_min_score[:c]
    "C"
  when average >= grades_min_score[:d]
    "D"
  when average >= grades_min_score[:f]
    "F"
  end
end

def average(grades)
  grades.sum / grades.size
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
