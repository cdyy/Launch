# Bannerizer

# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.



def print_in_box(text)
  whole_line = "+-" + "-" * text.length + "-+"
  empty_line = "| " + " " * text.length + " |"

  puts whole_line
  puts empty_line
  puts "| " + text + " |"
  puts empty_line
  puts whole_line

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')