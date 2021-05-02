# Reverse the Digits In a Number
# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

#my solution

# - convert the number into an array of numbers
# - initiate a empty result array to store the numbers in reversed order
# - iterate through the array of numbers in original order and add each number at the beginning in the result array (unshift)
# - join the result array and convert to number

def reversed_number(number)
  list_reversed = []
  number.to_s.split('').each {|num| list_reversed.unshift(num) }
  list_reversed.join.to_i
end

#solution without loop

# - convert the number into string
# - reverse the string
# - convert back to number

def reversed_number(number)
  number.to_s.reverse.to_i
end