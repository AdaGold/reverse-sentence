# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n+n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  unless my_sentence.length > 0 
    return []
  end 

  length = my_sentence.length 
  space_index = []
  i = 0 

  while i < length 
    if my_sentence[i] == " "
      space_index << i
    end 
    i +=1
  end 
  space_index << (length)
  array_words = []
  j = 0

  space_index.each do |index|
    if j == 0 
      array_words << my_sentence[j...index]
    else 
      last = space_index[j-1]
      array_words << my_sentence[(last+1)...index]
    end 
    j += 1 
 end 

 # sort the array 
  m = array_words.length - 1 
  while m > 0 

    k = 0 
    while k < array_words.length - 1 
      temp =[]
      if array_words[k].length > array_words[k+1].length
        temp = array_words[k]
        array_words[k] = array_words[k+1]
        array_words[k+1] = temp
      end 
      # puts "#{array_words[k]} <-> #{array_words[k+1]} "
      k += 1
    end 
    m -= 1
  end 

 return array_words
  raise NotImplementedError, "Method not implemented"
end



