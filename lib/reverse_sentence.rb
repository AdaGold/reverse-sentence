# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)

#Step 1 After help from tutor :/
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil? 

  sentence_reverse = []
  holder = []
  pointer = 0
  while pointer < my_sentence.length
    if my_sentence[pointer] == " " 
      sentence_reverse << holder.join 
      sentence_reverse << " "   
      holder = [] 
    else
      holder << my_sentence[pointer] 
    end
    pointer += 1
  end 
  sentence_reverse << holder.join 

  # Step 2
  pointer_last = sentence_reverse.length - 1
  pointer = 0
  while pointer_last >= 0
    if pointer < pointer_last
      holder = sentence_reverse[pointer]
      sentence_reverse[pointer] = sentence_reverse[pointer_last]
      sentence_reverse[pointer_last] = holder
      pointer += 1
    end
    pointer_last -= 1
  end

  # Step 3
  index = 0
  new_sentence = sentence_reverse.join
  while index < new_sentence.length
    my_sentence[index] = new_sentence[index] 
    index += 1
  end
end

# second thought
# Convert sentence into an array of words by splitting string by space
# Loop through each  word starting from last
# Add every element of an array in a reverse order to a new array
# Convert array into string by joining array by space
# def reverse_sentence(my_sentence)
#   if my_sentence.nil?
#     return nil
#   elsif my_sentence.empty?
#     return ""  
#   elsif
#     word_split = my_sentence.split(" ")
#     reserved = []
#     loop_end = word_split.length
#     while loop_end > 0
#       loop_end -= 1
#       reserved << word_split[loop_end]
#     end
#     reserved.join(' ')
#   else
#     raise NotImplementedError, "Method not implemented"
#   end
# end

# first thought
#This code reverses each word and location
    # string_length = my_sentence.length - 1
    # string_length.downto(0).each do |letter|
    #   reserved << my_sentence[letter]
    # end
    # my_sentence = reserved.join