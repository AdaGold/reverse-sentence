# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

# Convert sentence into an array of words by splitting string by space
# Loop through each  word starting from last
# Add every element of an array in a reverse order to a new array
# Convert array into string by joining array by space

def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return nil
  elsif my_sentence.empty?
    return ""  
  elsif
    word_split = my_sentence.split(" ")
    reserved = []
    loop_end = word_split.length
    while loop_end > 0
      loop_end -= 1
      reserved << word_split[loop_end]
    end
    reserved.join(' ')
  else
    raise NotImplementedError, "Method not implemented"
  end
end

my_sentence = reverse_sentence("apples?      them     like   you  do  How")
p my_sentence

#This code reverses each word and location
    # string_length = my_sentence.length - 1
    # string_length.downto(0).each do |letter|
    #   reserved << my_sentence[letter]
    # end
    # my_sentence = reserved.join