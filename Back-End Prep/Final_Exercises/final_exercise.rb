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

contact_data.each do |element|
  if contacts.has_key?("Joe Smith")
    contacts["Joe Smith"][:emai] = element[0][0]
    contacts["Joe Smith"][:address] = element[0][1]
    contacts["Joe Smith"][:phone] = element[0][2]
  else
    contacts["Sally Johnson"][:email] = element[1][0]
    contacts["Sally Johnson"][:address] = element[1][1]
    contacts["Sally Johnson"][:phone] = element[1][2]
  end
end

#Exercise 13
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#Exercise 14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}


