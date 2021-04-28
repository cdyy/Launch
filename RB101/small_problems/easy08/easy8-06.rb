# fizzbuzz
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

def fizzbuzz(start_num, end_num)
  original_list = (start_num..end_num).to_a
  altered_list = []
  original_list.each do |num| 
    if num % 3 == 0 && num % 5 == 0
      altered_list << "FizzBuzz"
    elsif num % 5 == 0
      altered_list << "Buzz"
    elsif num % 3 == 0
      altered_list << "Fizz"
    else
      altered_list << num
    end
  end
  puts altered_list.join(',')
end