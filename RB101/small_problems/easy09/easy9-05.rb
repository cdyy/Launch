
# Uppercase Check
# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

# Examples:

# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# my solution
# - split the string into array of characters
# - count how many characters are downcase
# - return false if number of downcase characters is greater than 0, otherwise return true
# - for non-alphabetic characters the selection criteria char.upcase != char will return true so they will not interfere the result

def uppercase?(string)
  characters_arr = string.split('')
  downcase_total = characters_arr.count {|char| char.upcase != char}
  downcase_total > 0 ? false : true
end

# a simpler and much better approach...

def uppercase?(string)
  string.upcase == string
end

# why would I think we need to compare character by character when I already can compare the whole string!?