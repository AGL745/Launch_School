#Exercice 1

a = [1,2,3,4,5,6,7,8,9,10]

a.each { |b| puts b }

#Exercise 2 

a.each { |c| puts c if c > 5 }

#Exercise 3 
text_holder = a.select {|a| puts a if a > 5 && a % 2 != 0 }

#Exercise 4
a.unshift(11)
a.push(0)

#Exercise 5
a.pop
a << 3

#Exercise 6

#Exercise 7
#Hash - Key:Value pair of data. Written with {key: "doggie"}
#Array ordered list of elements filed with an reference index

#Exercise 8
my_hash = {"Did" => "Talk", "Branch" => "Birdie"}
my_hash1 = {name: "Drew", height: "6ft3", age: 23}

#Exercise 9
newer_hash = {a:1, b:2, c:3, d:4}
newer_hash[:b]

#Exercise 10 
#Can hash values be arrays.. Yes
#Can you have an array of hashes.. Yes

newest_hash = {names: ['bob', 'joe', 'susan']}
newest_array = [{name: 'bob'},{name: 'joe'}, {name: 'susan'}]

newest_hash1 = {name: ['dan', 'drew', 'alex']}
newest_hash2 = [{name:"Ben"},{color: "White"}]


#Exercise 12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

if contacts.has_key?("Joe Smith")
    contacts["Joe Smith"][:emai] = contact_data[0][0]
    contacts["Joe Smith"][:address] = contact_data[1]
    contacts["Joe Smith"][:phone] = contact_data[2]
  end
if contacts.has_key?("Sally Johnson")
    contacts["Sally Johnson"][:email] = contact_data[1,0]
    contacts["Sally Johnson"][:address] = contact_data[1,1]
    contacts["Sally Johnson"][:phone] = contact_data[1,2]
  end


p contacts

#Exercise 13
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

if contacts.has_key?("Joe Smith")
    contacts["Joe Smith"][:emai] = contact_data[0][0]
    contacts["Joe Smith"][:address] = contact_data[1]
    contacts["Joe Smith"][:phone] = contact_data[2]
  end
if contacts.has_key?("Sally Johnson")
    contacts["Sally Johnson"][:email] = contact_data[1,0]
    contacts["Sally Johnson"][:address] = contact_data[1,1]
    contacts["Sally Johnson"][:phone] = contact_data[1,2]
  end

#Exercise 13
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#Exercise 14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

keys = [:email, :address, :phone]

contacts.each do |name, hash|
    keys.each do |key|
        hash[key] = contact_data.shift
    end
end

p contacts
p contacts["Joe Smith"]


contact_data2 = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts2 = {"Joe Smith" => {}, "Sally Johnson" => {}}


keys2 = [:email, :address, :phone]

#With larger data set
contacts2.each_with_index do |(name, hash), idx|
    keys2.each do |key|
        hash[key] = contact_data2[idx]
    end
end

p contacts2

#Exercise 15

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr
arr.delete_if {|x| x.start_with?("s")}
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr
arr.delete_if {|x| x.start_with?("s","w")}
p "No s's or w's #{arr}"


#Exercise 16

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

#Perform split on each "string" method

b = a[0].split(" ")
c = []
a.map do |x| 
    c.push(x.split) 
end

p c.flatten


#Exercise 17
#These hashes are equal only difference is declaration method. 

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2 
    puts "Well Damn!"
else
    puts "Too baddd!"
end

