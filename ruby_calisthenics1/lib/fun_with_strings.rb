module FunWithStrings
  def palindrome? 
    # your code here
    #palidrome are words that can be read forward and backwards, eg. wow, dad, etc
    #the word reveresed is the same has the original variable before reverse regardless of capitalization.
    
    #from rspec, palindrome needs to work with a sentence to...despite the white space
    str = self.downcase #make everythng lowercase
    
    #if a string contains ANY instance that is NOT a letter or number, 
    #replace with just '', ie. the no space, and make it one whole one-word string
    str = str.gsub(/[^a-z0-9]+/, '') 
    
    #check if the string is a palindrome by checking the reverse of the string array
    if str == str.reverse
      return true
    else
      return false #if not a palindrome.
    end  
    
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
s = String.new()
s.palindrome?()