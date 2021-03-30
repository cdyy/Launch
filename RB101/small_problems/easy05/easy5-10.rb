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

#Further exploration

def print_in_box_wordwrap(text)
  if text.length <= 76
    print_in_box(text)

  else #when text.length > 76
    whole_line = "+-" + "-" * 76 + "-+"
    empty_line = "| " + " " * 76 + " |"

    puts whole_line
    puts empty_line

    current_text_line = text.dup #use .dup to avoid original text to be altered.

    while current_text_line.length > 76 #loop to print 1st to 2nd last line of the input text
      puts "| " + current_text_line.slice!(0,76) + " |"
    end

    puts  "| " + current_text_line + " " * (76 - current_text_line.length) + " |" 
    #print the last line of the text, add space to keep the whole box width as 80
    puts empty_line
    puts whole_line
  end
end


print_in_box_wordwrap('To boldly go where no one has gone before.')
print_in_box_wordwrap('')
print_in_box_wordwrap("This is a very long messsage to be chopped into different lines. This is a very long messsage to be chopped into different lines. This is a very long messsage to be chopped into different lines.")
