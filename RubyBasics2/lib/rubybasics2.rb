# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  
    message = 'Hello, ' + name
    
    return message
end

# Part II
def starts_with_consonant? s #parameter is a string
  # YOUR CODE HERE
  #conditional to check is the first letter in the name contains a constant...
  
  if s[0] =~ /[^AEIOU]/ && s[0] =~ /[^aeiou]/ && s[0] =~ /[^\d]/ && s[0] =~ /[^$&+,:;=?@#]/
    return true
  else
    return false
  end  
  
  
end


# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
end
