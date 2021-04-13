# Capitalize Words
# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap(string)
	string.split.map(&:capitalize).join(' ')
end

# Further Exploration
# Ruby conveniently provides the String#capitalize method to capitalize strings. Without that method, how would you solve this problem? Try to come up with at least two solutions.


#solution 1
def word_cap(string)
	string.split.map { |e| e[0].upcase + e[1..].downcase}.join(' ')
end

#solution 2
def word_cap(string)
	result = ""

	string.split('').each_with_index do |letter, index|
		if index == 0 || string[index-1] == " "
			result << letter.upcase
		else
			result << letter.downcase
		end
	end

	result
end
