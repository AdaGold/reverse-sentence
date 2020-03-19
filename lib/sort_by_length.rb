# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# to why it was not => nlogn
# i   j 
# 1   1 
# 2   2
# 3   3
# 4   4
# 5   5
# .   .
# .   .
# n   n

# n + n(n+1)/2 = n +  (n2 + n)/2  => O(n2)

# Space complexity: ?
# n => array 
# O(n)

def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  i = 1
  while i < array.length()
    temp = array[i]
    # puts temp
    j = i - 1
    while j >= 0 && temp.length() < array[j].length()
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = temp
    i += 1
  end
  return array
end
