# A method to reverse the words in a sentence, in place.
# Time complexity: ?  
# n = mysentence length
# m = newsentence length
# n + 1/2m + m =  n + 3/2m => O(n + m) (1/2 n b/c since it's decrementing and increamenting at the same time)

# Space complexity: ?
# n = new_arr length == my_sentence
# m = holder length stores only words without space,
# p = new_sentence
# n + m + p => O(n + m + p)


def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  new_arr = []
  holder = []
  i = 0
  while i < my_sentence.length
    if my_sentence[i] == " "
      new_arr << holder.join # ["Hello"]
      new_arr << " "   # ["Hello", " "]
      holder = [] # empty array for the next word
    else
      holder << my_sentence[i]
    end
    i += 1
  end
  new_arr << holder.join # ["Hello", " ", "world"]
  # creating the reversed string from the above array
  k = new_arr.length - 1
  i = 0
  while k >= 0
    if i < k
      temp = new_arr[i] # temporarly save words in the first half of the array
      new_arr[i] = new_arr[k] # swap each words in the array
      new_arr[k] = temp
      i += 1
    end
    k -= 1
  end
  # ["world", " ", "Hello"]
  i = 0
  new_sentence = new_arr.join
  while i < new_sentence.length
    my_sentence[i] = new_sentence[i] #my_sentence at index 0 is replaced by new_sentence at index 0
    i += 1
  end
  return my_sentence
end

