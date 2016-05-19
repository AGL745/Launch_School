#Examples from Hashes Chapter

old_syntax_hash = {:name => 'bob'}

new_syntax = {name: 'bob'}

person = {height: '6ft', weight: 222}

#addnig to hash
person[:age] = 63
person[:eyecolor] = 'Yellow'

puts person

#Remove a key:value pair 
person.delete(:age)
puts person

#Information Retrieval 
person[:name]

#Merging Two Hashes 
pizza = {topping: "Cheese", size: 'large'}
person.merge!(pizza)

hash = {10 => "Dog"} #Integer key
hash1 = {"String" => "String as key"}
hash2 = {32.12 => "Float as key"}
hash3 = {["my_array"] => "This_array"} # array as key
hash4 = {{key: "key"} => "Hash as key"} # hash as key

hash1.has_key?("String") # True
hash2.has_key?("String") # False 

hash1.select { |k , v| k == "String"}

hash2.fetch(32.12)


