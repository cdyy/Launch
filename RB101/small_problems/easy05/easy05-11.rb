# Spin Me Around In Circles

# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

# def spin_me(str)
#   str.split.each do |word|
#     word.reverse!
#   end.join(" ")
# end



# The returned string is not the same object as the one passsed in as an argument in the spin_me method.


# When the string argument undergoes split method, it is reassigned to a new object which is an array. 

a = "hello world"
a.object_id

a.split.object_id 

# The two object IDs will be different because with the .split method it is now bound to a different object.

# When the array then goes through the each do method, the word.reverse! method mutates the array by reassigning each array element into a different object. So in the end the array remains the same object.

a = ["hello", "world"]
a.object_id

a.each do |word|
    word.reverse!
  end.object_id

# Therefore, the two object IDs above will be the same.

# join. method will bound the array object into a different object, which is a string object.

a = ["hello", "world"]
a.object_id

a.join(" ").object_id

# The object IDs are different which shows they are different objects.






