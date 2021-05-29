# Practice Problem 8
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
Hint

# You can use the String#chars method to convert the words to arrays of individual characters.

hsh.values.flatten.each do |word|
  word.chars.each {|letter| puts letter if "aeiou".include?(letter)}
end