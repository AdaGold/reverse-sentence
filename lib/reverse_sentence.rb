# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)

def reverse_sentence(my_sentence)
  if my_sentence == nil || my_sentence == ""
    return my_sentence
  end 

  length = my_sentence.length 
  # space_index stores all space index location
  space_index = []
  i = 0 
  while i < length 
    if my_sentence[i] =~ /\s+/
      space_index << i
    end 
    i +=1
  end


  if space_index == []
    return my_sentence
  end 

# word_index stores all words index location
  words_index = []

  if space_index[0] > 0 
    words_index << [0,(space_index[0]-1)]
  end 

  (space_index.length-1).times do |num|
    if (space_index[num] + 1) <= (space_index[num+1]-1)
    words_index << [(space_index[num] + 1),(space_index[num+1]-1)]
    end 
  end 

  if length > space_index[-1]
    words_index << [(space_index[-1]+1),(length-1)]
  end 

  new_sentence = ""
  j = 0
  s = -1
  w = -1
 

  num_times = (space_index.length)+(words_index.length)
  # stitch everything together here
  num_times.times do |n|

    if w * (-1) > words_index.length
      new_sentence[j] = " "

      j += 1
      s -= 1


    elsif  s *(-1) > space_index.length
      new_sentence[j] = my_sentence[(words_index[w][0])..(words_index[w][1])]

      j += ((words_index[w][1])-(words_index[w][0])+1)
      w -= 1

    elsif space_index[s] > words_index[w][0]
      new_sentence[j] = " "

      j += 1
      s -= 1

    else  
      new_sentence[j] = my_sentence[(words_index[w][0])..(words_index[w][1])]

      j += ((words_index[w][1])-(words_index[w][0])+1)
      w -= 1

    end 
  end 

  
  length.times do |n|
    my_sentence[n] = new_sentence[n]
  end 

  return my_sentence
  raise NotImplementedError
end

