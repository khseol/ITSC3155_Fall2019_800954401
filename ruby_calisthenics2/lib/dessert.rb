class Dessert
  # add code for setters and getters...so...attr_accessor?
  
  #from the reading...
  #attribute is a property with named getter and/or setter methods
  attr_accessor :name
  attr_accessor :calories
  
  
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  
  def healthy?
    # your code here
    if @calories < 200
      return true
    else
      return false
    end  
  end
  
  
  def delicious? #always~ :)
    # your code here
  
    if @flavor =='licorice'
      return false
    else
      return true #if the flavor is NOT licorice
    end  
    
  end
end

class JellyBean < Dessert
  # add code for setters and getters == attr_accessor :variable
  attr_accessor :flavor #from the jelly bean challenge
  def initialize(flavor)
    # your code here
    @flavor = flavor
    
    #from the instructions, needs to inherit from the dessert class
    @name = @flavor + " jelly bean"  #to concatenate the flavor-filled jelly bean
    @calories = 5
  end
  
  
end

