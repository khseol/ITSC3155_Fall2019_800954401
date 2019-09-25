# Ruby Basics Part 3

class BookInStock
# YOUR CODE HERE
#part 1
attr_accessor :isbn
attr_accessor :price
  def initialize(isbn, price)
   raise ArgumentError if isbn.empty? || price <= 0 #part 2, raise the argument when given un acceptable conditions
   @isbn = isbn
   @price = price
   end    
   
 def price_as_string () #part 3
     
     #from the reading, we need to use the % for conversions
     #precision will be .2, indicating two places after the decimal.
     "$%.2f" % @price #there is no concatentation, so a plus sign is not necessary
    end

#my own code to experiment with:
def getISBN()
     "the ISBN of this book is: " + @isbn
    
end

end

#example objects to run through the console and check the output.
book1 = BookInStock.new("08856-09-1-3648-9", 50.086) #i guess the isbn will be a string...
puts book1.price_as_string()

#lots of decimal places, will round to the nearest decimal place
#based on the precision, in this case, the nearest hundredth.
book2 = BookInStock.new("09678-87-5-3784-0", 15.99865) 
puts book2.price_as_string()

puts book1.getISBN()

