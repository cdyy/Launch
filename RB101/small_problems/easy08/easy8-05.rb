# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Examples:

# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

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

#Return a list of all the substrings of string that are palindromic
def palindromes(string)
  substrings(string).select do |substring|
    substring = substring.split('') 
    is_palindromic = true
    loop do 
       is_palindromic = substring.shift == substring.pop 
       break if substring.size <= 1 || is_palindromic == false
    end
    is_palindromic
  end
end



