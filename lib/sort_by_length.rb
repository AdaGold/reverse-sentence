# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  array_of_words = []

  if my_sentence == ""
    return array_of_words
  end

  array_of_words = my_sentence.split

  first_word = array_of_words[0]
  (1..array_of_words.length-1).each do |i|
    current_word = array_of_words[i]
    if current_word.length < first_word.length
      array_of_words[i] = first_word
      array_of_words[i-1] = current_word
    end
    first_word = current_word
  end
  return array_of_words
end
