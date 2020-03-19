# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  length = my_sentence.length 
  space_index = []
  i = 0 

  while i < length 
    if my_sentence[i] =~ /\s+/
      space_index << i
    end 
    i +=1
  end
  puts space_index
  return space_index
  raise NotImplementedError
end

p reverse_sentence("  hello world! ")