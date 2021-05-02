# Get The Middle Character
# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# Examples:

# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# my solution

# - check input string size if it's odd or even 
# - if its odd, get the character at index size / 2
#   if its even, get two characters starting at index size / 2 - 1
# - return that character in string

def center_of(string)
  if string.size.odd?
    middle_character = string[string.size / 2]
  else
    middle_characters = string[string.size / 2 - 1, 2]
  end
end