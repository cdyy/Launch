# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60 'F'

# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# get_grade(95, 90, 93) == "A"
# get_grade(50, 50, 95) == "D"

# my solution

# - set a hash to store the grading rules
# - find the mean average of the input scores and assign the value to variable mean_score
# - return the value of the hash where the mean_score is found at the key (the array of numbers) (.include?)
#   => check if which range the mean_score is at. (.select)
#   => return the value of that key-value pair (.values) (array => string .join)


def get_grade(score1, score2, score3)

  grade_rules = {
  (90..100).to_a => "A",
  (80..89).to_a => "B",
  (70..79).to_a => "C",
  (60..69).to_a => "D",
  (0..59).to_a => "F"
  }

  mean_score = (score1 + score2 + score3) / 3

  grade_rules.select { |key, value| key.include?(mean_score) }.values.join
end
