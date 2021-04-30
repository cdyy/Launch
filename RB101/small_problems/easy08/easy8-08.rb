# Double Char (Part 2)
# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""


def double_consonants(string)
  format = /[^aeiou\d\s\W]/i
  string.split('').map do |char| 
    char.match?(format) ? char * 2 : char
  end.join
end
