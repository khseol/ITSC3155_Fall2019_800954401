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
    #Objective: the method to count the number of times a word has appeared in string
    
    #need hash
    word = Hash.new(0) # to make a new hash with nothing in it
    
    #from the rspec, string needs to avoid counting periods (.) as a word
    # "", avoids leading whitespace, and and embedded whitespace
    
    #to get rid of the white space, leading white space, and the embedded whitespace
    #plus, the instance of a word appearing is counted regardless of the letter case
    #substitute any instance that is not a word or number into a ' ', ie a space, and split from there per word
    str = self.downcase
    str = str.gsub(/[^a-z0-9]+/, ' ')
    
    
    #need to make a key per hash, and value is number of times it has appeared.
    
    str.split(' ').each  {|w| word[w] = word[w] + 1 }
    #for each iteration w, w is the key to the hash, and value is equal 
    #to first instance plus, the next instance of the word appearing.
    return word
  end
  
  
  def anagram_groups
    
    #charcter case doesn't matter
    #what about an anagram?
      #has the same letters
      #has the same length in one word to another

    #how to distinguish between an element of one word to another 
    #with the same exact entirety of characters(no less, no more) and length and group them together?
    str = self.downcase
    str = str.split #automatically spplit the array of words by the space or if NULL, no split
    str = str.group_by{|word| word.chars.sort}.values 
    #group_by return te array into a hash
    #by each word element of the split string,
    #group them by performing to see if per word carries the same number and type of characters.
    
    #ie. the string of sorted characters are the key
    #value  is the anagram from the sorted characters in the key.
    return str
    
  end
  
  
  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
s = String.new()
s.palindrome?()
s.count_words()
s.anagram_groups()