# Multiply Lists

# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#solution 1
def multiply_list(array1, array2)
  result = []
  index = 0
  loop do
    result << array1[index] * array2[index]
    index += 1
    break if index >= array1.size
  end
  result
end

#solution 2
def multiply_list(array1, array2)
  result = []
  array1.each_index {|i| result << array1[i] * array2[i]}
  result
end

# Further Exploration
# The Array#zip method can be used to produce an extremely compact solution to this method. Read the documentation for zip, and see if you can come up with a one line solution (not counting the def and end lines).

def multiply_list2(array1, array2)
  array1.zip(array2).map { |sub_array| sub_array.reduce(:*)}
end

# multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
