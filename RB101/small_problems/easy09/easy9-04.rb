# Counting Up
# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# Examples:

# sequence(5) == [1, 2, 3, 4, 5]
# sequence(3) == [1, 2, 3]
# sequence(1) == [1]
# sequence(-1) 

# my solution

def sequence(num)
  result = []
  num.times{|i| result << i + 1}
  result
end

# a better approach

def sequence(num)
  (1..num).to_a
end

# Further Exploration
# Food for thought: what do you think sequence should return if the argument is not greater than 0. For instance, what should you do if the argument is -1? Can you alter your method to handle this case?

# - there is nothing returned as there is no sequence that starts with a 1 finishes with a -1 when the sequence is incrementing by 1 for each number.

# My suggestion to handle this case:

# either 

# - increment the num by 1 until it reaches 1

def sequence(num)
  num > 0 ? (1..num).to_a : (num..1).to_a
end

# sequence(0) == [0, 1]
# sequence(-1) == [-1, 0, 1]
# sequence(-2) == [-2, -1, 0, 1]

# or 

# - from 1 decrement by 1 until it reaches the num

def sequence(num)
  result = [1]
  times_number = num > 0 ? num - 1 : -(num) + 1
  times_number.times{num > 0 ? result << result.last + 1 : result << result.last - 1}
  result
end

# sequence(0) == [1, 0]
# sequence(-1) == [1, 0, -1]
# sequence(-2) == [1, 0, -1, -2]



