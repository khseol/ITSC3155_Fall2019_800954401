# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  
     message = 'Hello, ' + name
    
    # return message
end

# Part II
def starts_with_consonant? s #parameter is a string
  # YOUR CODE HERE
  #conditional to check is the first letter in the name contains a constant...
  
  #ie. no vowels, numbers, and special characters
   if s[0] =~ /[^AEIOU]/ && s[0] =~ /[^aeiou]/ && s[0] =~ /[^\d]/ && s[0] =~ /[^$&+,:;=?@#]/
     return true
   else
     return false
   end  
 
end


# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  #basic rule that of the last two digits of any number (base 10) is divisible by, the number is a multiple of four.
  
  #test-comprehend Example:
  # 110100 = 52 (in base 10) % 4 = 0 --> multiple of 4
  # 110101 = 53 (in base 10) % 4 = 1 --> NOT multiple of 4
  # 110110 = 54 (in base 10) % 4 = 2 --> NOT a multiple of 4
  
  # 10000 = 32 (in base 10) % 4 = 0 --> multiple of four
  # 10011 = 35 (in base 10) %4 = OBVIOUSLY NOT a multiple of four...
  # exception that if string has ONLY one binary digit, and is 0 --> multiple of 4, otherwise would be false.
  
  #conclusion...string of binary of indefinite length  whose LAST TWO binary digits REMAIN 00, the whole binary is a multiple of 4!
  
  #conditional: will have multiple if functions...

   if s =~ /[A-Z]/ || s =~ /[a-z]/ || s =~ /[2-9]/ || s =~ /[$&+,:;=?@#]/ 
     return false #if the binary string contains any other charcter that is not a 0 or 1
   elsif s =~ /00$/  
     return true #if the the binary string has a double zero as the last two digits of indefinite string length
   elsif s.length == 1 && s[0] =~ /0/  
     return true # if the binary string is just one binary digit, and digit is ONLY a 0
   else
     return false #if the binary string is indeed a binary string, but is NOT a multiple of 4
   end  
end
