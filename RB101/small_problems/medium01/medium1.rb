# Rotation (Part 1)
# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:

# Copy Code
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]

def rotate_array(array)
  array_copy = array.dup
  array_copy.shift
  array_copy << array[0]
end

# Further Exploration

# Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.

def rotate(input)
  if input.to_s == input
    string_arr = input.split('')
    rotate_array(string_arr).join
  else
    rotate_array(input)
  end
end

# rotate('great') == 'reatg'