# Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Example:

# Copy Code
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def staggered_case(string)
  need_upper = true
  string.split('').map do |char| 
    if char =~ /[a-zA-z]/
      transformed_char = need_upper ? char.upcase : char.downcase
      need_upper = !need_upper
      transformed_char
    else
      char
    end
  end.join
end

#Further exploration

# Further Exploration
# Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining the upper/lowercase state. That is, you want a method that can perform the same actions that this method does, or operates like the previous version.

# Hint: Use a keyword argument.


def staggered_case_not_count_non_alphabetic(string)
  need_upper = true
  string.split('').map do |char| 
    if char =~ /[a-zA-z]/
      transformed_char = need_upper ? char.upcase : char.downcase
      need_upper = !need_upper
      transformed_char
    else
      char
    end
  end.join
end

def staggered_case_count_non_alphabetic(string)
  need_upper = true
  string.split('').map do |char| 
    transformed_char = need_upper ? char.upcase : char.downcase
    need_upper = !need_upper
    transformed_char
  end.join
end

def staggered_case3(string, count_non_alphabetic = true)
  if count_non_alphabetic == true
    staggered_case_count_non_alphabetic(string) 
  else
    staggered_case_not_count_non_alphabetic(string)
  end
end

staggered_case3('I Love Launch School!', true)
staggered_case3('I Love Launch School!', false)
staggered_case3('ALL CAPS', true)
staggered_case3('ALL CAPS', false)
staggered_case3('ignore 77 the 444 numbers', true)
staggered_case3('ignore 77 the 444 numbers', false)







