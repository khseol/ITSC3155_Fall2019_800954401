# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    contactInfor = {} #the temporay variable that will be used to hold the key and vale of the parameters
    index = 0
    if emails [0] == nil #condition that if the email array conatins no emails, return the hash of contacts
        return contacts
    else
        contacts.each do |key, value|
            tempoKey = "#{key}" #each key is put into a temporary key variable
            contactInfor[tempoKey] = emails[index] #contact information for each key will have the corresponding email of each index
            index += 1 #increment the index of email by 1
        end 
    end    
       return contactInfor     
end



# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    
    arr2 = {}
    index = 0
    if contact_info[0][0] == nil
        return contacts
    else
         contacts.each do |key,value|
         tempKey = :"#{key}"
         arr2[tempKey] = {:email => contact_info[index][0], :phone => contact_info[index][1]} #at each element of the 2-d array
                                                                    #first element is email, #second element is phone
         index+=1
        end
    end   
    return arr2
    
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
   arr = [] #will contain the 1-d array, maiking the whole array 2-d
   emailArr= [] 
   phoneArr = []
   nameArr = []
    
    contacts.each do |key,value|
        keyToArr = :"#{key}"
        
        ##pushes the elements into the array
        emailArr << contacts[keyToArr][:email] #tells which one is which
        phoneArr << contacts[keyToArr][:phone]
        nameArr << "#{key}" #no colon, appended into the array
    end    
    arr << emailArr ##append all to the arr array
    arr << phoneArr
    arr << nameArr
    
    return arr
end
