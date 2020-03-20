# A method which will return an  an array of the words in the string - changed?
#  sorted by the length of the word.
# Time complexity: O(n)
# Space complexity: O(1)

def sort_by_length(my_sentence)
  split_sentence = my_sentence.split(" ")

  split_sentence.each_with_index do |word, index|
    previous_word = split_sentence[index - 1]
    if index == 0 
    elsif word.length < previous_word.length
      split_sentence[index - 1], split_sentence[index] = word, previous_word
    end
  end
end