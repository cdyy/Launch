# Swap Case
# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#solution 1
def swapcase(string)
  result = ""
  string.each_char do |char|
    transformed_char = char == char.downcase ? char.upcase : char.downcase
	   result << transformed_char
  end
  result
end

#solution 2
def swapcase2(string)
  transformed = string.split('').map do |char|
    if ("a".."z").include?(char)
      char.upcase
    elsif ("A".."Z").include?(char)
      char.downcase
    else
      char
    end 
  end
  transformed.join
end

# swapcase2('CamelCase') == 'cAMELcASE'
# swapcase2('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#solution 3

def swapcase3(string)
  string.split('').map {|char| char =~ /[a-z]/ ? char.upcase : char.downcase}.join
end


