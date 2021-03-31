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

#Further exploration (refractered - fix word-break at the end of the line)

# +------------------------------------------------------------------------------+ -> whole_line
# |                                                                              | -> empty_line
# | This is a very long messsage to be chopped into different lines. This is a   | -> current_text_line
# |  very long messsage to be chopped into different lines. This is a very long  | -> current_text_line
# |  messsage to be chopped into different lines.                                | -> last_text_line
# |                                                                              | -> empty_line
# +------------------------------------------------------------------------------+ -> whole_line

def print_in_box(text)
  whole_line = "+-" + "-" * text.length + "-+"
  empty_line = "| " + " " * text.length + " |"

  puts whole_line
  puts empty_line
  puts "| " + text + " |"
  puts empty_line
  puts whole_line
end

def word_break_index(text) #to work out where to break the line without breaking any word
  index = 76
  while text[index] != " "
    index -= 1
  end
  word_break_index = index 
end

def print_in_box_wordwrap(text)
  if text.length <= 76
    print_in_box(text)

  else #when text.length > 76
    whole_line = "+-" + "-" * 76 + "-+"
    empty_line = "| " + " " * 76 + " |"

    puts whole_line
    puts empty_line

    current_text_line = text.dup #use .dup to avoid original text to be altered.

    while current_text_line.length > 76 #print 1st to 2nd last line of the input text
      text_line_to_print = current_text_line.slice!(0,word_break_index(current_text_line))
      puts "| " + text_line_to_print + " " * (76 - text_line_to_print.length) + " |"
    end

    last_text_line =  "| " + current_text_line + " " * (76 - current_text_line.length) + " |" 
    puts last_text_line
    
    puts empty_line
    puts whole_line
  end
end

print_in_box_wordwrap('To boldly go where no one has gone before.')
print_in_box_wordwrap('')
print_in_box_wordwrap("This is a very long messsage to be chopped into different lines. This is a very long messsage to be chopped into different lines. This is a very long messsage to be chopped into different lines.")

