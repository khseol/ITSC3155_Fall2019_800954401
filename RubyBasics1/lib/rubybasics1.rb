# Lab 1
# Part I
def sum arr
  # YOUR CODE HERE
  return arr.sum
end

# Part II
def max_2_sum arr
  # YOUR CODE HERE
  if (arr.empty? == true)
    return 0
  elsif (arr.length == 1)
    return arr[0]
  else 
    return arr.sort.last(2).sum
  end  
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
  if (arr.length == 1)
    return false
  elsif(arr.empty? == true)
    return false
  else
    #methods found and to use: combination, and any?
    arr.combination(2).any? {|x,y| x+y == n}
  end
  end