# Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

def repeater(string)
  string.split('').map { |char| char * 2 }.join
end