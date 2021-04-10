# Right Triangles
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

def triangle(n)
  stars = 1
  spaces = n - 1

  n.times do |i|
    puts " " * spaces + "*" * stars
    stars += 1
    spaces -= 1
  end
end

# Further Exploration
# Try modifying your solution so it prints the triangle upside down from its current orientation.

def triangle_topright(n)
  stars = n
  spaces = 0

  n.times do |i|
    puts " " * spaces + "*" * stars
    stars -= 1
    spaces += 1
  end
end

# Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

def triangle_bottom(n,direction)
  stars = 1
  spaces = n - 1

  n.times do |i|
    
    left = "*" * stars + " " * spaces
    right = " " * spaces + "*" * stars

    line = direction[-1] == "l" ? left : right
    puts line

    stars += 1
    spaces -= 1
  end
end

def triangle_top(n,direction)
  stars = n
  spaces = 0

  n.times do |i|

    left = "*" * stars + " " * spaces
    right = " " * spaces + "*" * stars

    line = direction[-1] == "l" ? left : right
    puts line
      
    stars -= 1
    spaces += 1
  end
end

def triangle_alldirections(n, direction) 
#top-r, top-l, bottom-r, bottom-l
  if direction[0..2] == "top"
    triangle_top(n,direction)
  elsif direction[0..5] == "bottom"
    triangle_bottom(n,direction)
  end
end

triangle_alldirections(10, "top-r") 
triangle_alldirections(10, "top-l") 
triangle_alldirections(10, "bottom-r") 
triangle_alldirections(10, "bottom-l") 









