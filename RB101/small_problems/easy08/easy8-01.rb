# Sum of Sums
# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Examples:

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# solution 1
# array = [3, 5, 2]
# result = the sum of 
# 3
# 3 + 5
# 3 + 5 + 2

# 3 (array[0]) appears 3 times (= array size - 0)
# 5 (array[1]) apears 2 times (= array size - 1)
# 5 (array[2]) apears 1 times (= array size - 2)

def sum_of_sums(array)
  result = 0
  array.each_index do |i|
    result += array[i] * (array.size - i)
  end
  result
end



# solution 2

# result = 0
# sum of array[0..0] => add to result
# sum of array[0..1] => add to result
# sum of array[0..2] => add to result
# ...sum of array[0..until at end of array) => add to result

def sum_of_sums(array)
  result = 0
  array.each_index do |i|
    result += array[0..i].sum
  end
  result
end



