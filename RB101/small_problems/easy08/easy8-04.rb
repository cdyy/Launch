# All Substrings
# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

# Examples:

# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# requirements:
# 1. get all the substrings of the string
# 2. order rules
#   a. List all substrings for each starting index in the order from shortest to longest 
#   b. List all substrings in order of starting position (index 0 first, then 1...)
# 3. the output should be an array of the substrings

# algorithm:
# - from the last exercise we already had a method to get all the substrings of the string (requirement 1, requirement 2a)
# - add a new argument to that method so that we can manipulate the position to start
#   (requirement 2b)
# - loop the method leading_substrings with starting index shifting from position 0 to 1..2..3..until the last string elements substring is also generated.
# - flatten the result array as the output from looping the leading_substrings will give an nested array 


def leading_substrings(string, starting_index) 
  result = [] 
  string.split("").each_index {|i| result << string[starting_index..i] if i >= starting_index}
  result
end

def substrings(string)
  starting_index = 0
  result = []
  loop do
    result << leading_substrings(string, starting_index)
    break if starting_index >= string.size - 1
    starting_index += 1
  end
  result.flatten
end