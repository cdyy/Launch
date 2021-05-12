# Grocery List
# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Example:

# buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]

# my solution
# - create an empty result array
# - iterate along the input array and for each sub-array,
#     - do <number of fruits> times (sub-arr[1]) to append the first element of the sub-array (sub-arr[0]) into the result array
# - return the result array

def buy_fruit(grocery_list)
  result = []
  grocery_list.each { |sub_array| sub_array[1].times {|i| result << sub_array[0]} } 
  result
end