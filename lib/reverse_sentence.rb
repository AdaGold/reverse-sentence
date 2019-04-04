# A method to reverse the words in a sentence, in place.
# Time complexity: Linear, or O(n), where n is the number of characters inside the string
# Space complexity: Constant or O(1), because additional space doesn't
# depend on array size or input
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil

  last_letter_index = 0
  empty_index = 0
  first_letter_index = last_letter_index

  while last_letter_index < my_sentence.length
    until [" ", nil].include?(my_sentence[last_letter_index])
      last_letter_index += 1
    end

    empty_index = last_letter_index
    last_letter_index -= 1

    while first_letter_index < last_letter_index
      b = my_sentence[last_letter_index]
      my_sentence[last_letter_index] = my_sentence[first_letter_index]
      my_sentence[first_letter_index] = b
      last_letter_index -= 1
      first_letter_index += 1
    end

    last_letter_index = empty_index + 1
    first_letter_index = last_letter_index
  end

  #########

  i = 0
  j = my_sentence.length - 1

  while i < j
    b = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = b

    i += 1
    j -= 1
  end

  return my_sentence
end
