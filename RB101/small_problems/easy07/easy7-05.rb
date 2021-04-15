# Staggered Caps (Part 1)
# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example:

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#solution 1

def staggered_case(string)	
  result = []
  string.split('').each_index do |i| 
    transformed_char = i.even? ? string[i].upcase : string[i].downcase
    result << transformed_char
  end
  result.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#solution 2

def staggered_case2(string)
	need_upper = true
  string.split('').map do |char| 
  	transformed_char = need_upper ? char.upcase : char.downcase
    need_upper = !need_upper
    transformed_char
  end.join
end

staggered_case2('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case2('ALL_CAPS') == 'AlL_CaPs'
staggered_case2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#Further exploration

def staggered_case2(string, first = true)
	need_upper = first
  string.split('').map do |char| 
  	transformed_char = need_upper ? char.upcase : char.downcase
    need_upper = !need_upper
    transformed_char
  end.join
end

staggered_case2('I Love Launch School!', true)
staggered_case2('ALL_CAPS', true)
staggered_case2('ignore 77 the 444 numbers', true)

staggered_case2('I Love Launch School!', false)
staggered_case2('ALL_CAPS', false)
staggered_case2('ignore 77 the 444 numbers', false)
