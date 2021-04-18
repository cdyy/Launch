# Multiply Lists

# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

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