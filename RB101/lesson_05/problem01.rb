# The purpose of these practice problems is to let you practice the specific concepts covered in the last three assignments; in some cases there may exist a Ruby method that lets you achieve the same result as passing a block to an iterative method but that isn't the objective here. Feel free to research those methods if you wish but you should try and solve the problems using the concepts and techniques outlined in the previous assignments.

# If any of the problems appear difficult at first, take the time to break them down and remember to focus on the structure of the collection object, the return value of blocks and methods and the side effects of any methods.

# Practice Problem 1
# How would you order this array of number strings by descending numeric value?

# arr = ['10', '11', '9', '7', '8']

#.sort

arr.each_index do |i|
  if arr[i].to_i < arr[i + 1].to_i
    arr[i], arr[i + 1] = arr[i + 1], arr[i]
  end
end