# Welcome Stranger
# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

# Example:

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.


# My solution:

# 1/ intiate the name variable which is the string formed by joining the 2 or more elements together with space
# 2/ intiate the title and occupation variables by getting the values from the relevant keys.
# 3/ print out the greeting string with the variables embedded.

def greetings(array, hash)
  name = array.join(' ')
  title = hash[:title]
  occupation = hash[:occupation]
  greetings = "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end