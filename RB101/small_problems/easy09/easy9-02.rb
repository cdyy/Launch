# Double Doubles
# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# Examples:

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10

# Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.

# my solution

# - intiate a string variable for converting the input number in string 
# - the input number is a double number if
#       - the string variable size is an even number? AND 
#       - the left_side digits = right_side digits

#       no of elements in each half = size / 2
#           left side = (no of elements in each half from index 0)
#           right side =  (the rest of the elements starting from index size/2)

# - return number * 2 if it is a double number, 
#    otherwise, return itself


def twice(number)
  digits = number.to_s
  center = digits.size / 2
  left_side = digits.slice(0, center)
  right_side = digits[center..]

  left_side == right_side ? number : number * 2
end