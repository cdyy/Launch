# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845

# my solution

# rules for rotating

# 1/ number (input) at position size - 0 moves to end of all digits
# 2/ number at position size - 1 moves to end of all digits
# 3/ number at position size - 2 moves to end of all digits
# 4/ ... until position size - size moves to end of all digits => result = output

# Algorithm
# 1/ size of the digits (number.to_s.size)
# 2/ iterate size of digits number of times 
#      each time do the rotate_rightmost_digits methods (number, index) to give the number a new value
# 3/ return the final version of number (after all iterations)

def rotate_rightmost_digits(number, position)
  number_arr = number.to_s.split('')
  digit_to_rotate = number_arr[-position].split
  new_number_arr = number_arr - digit_to_rotate
  new_number_arr << digit_to_rotate
  new_number_arr.join.to_i
end

def max_rotation(number)
  number_size = number.to_s.size
  number_size.times { |index| number = rotate_rightmost_digits(number, number_size - index) } 
  number
end