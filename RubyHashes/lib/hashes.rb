# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    contactInfor = {}
    index = 0
    if emails [0] == nil
        return contacts
    else
        contacts.each do |key, value|
            tempoKey = "#{key}"
            contactInfor[tempoKey] = emails[index]
            index += 1
        end 
    end    
       return contactInfor     
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
