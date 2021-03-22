def crunch(string)
  original = string.chars
  collasped = []
  original.each do |char| 
      collasped << char if collasped.last != char
  end
  collasped.join
end


 puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
 puts crunch('4444abcabccba') == '4abcabcba'
 puts crunch('ggggggggggggggg') == 'g'
 puts crunch('a') == 'a'
 puts crunch('') == ''