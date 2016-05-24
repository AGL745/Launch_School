#Exercise 8
my_hash = {"Did" => "Talk", "Branch" => "Birdie"}
my_hash1 = {name: "Drew", height: "6ft3", age: 23}

p my_hash
p my_hash1

#Exercise 9
newer_hash = {a:1, b:2, c:3, d:4}
p newer_hash[:b]
p newer_hash
#Exercise 10 
#Can hash values be arrays.. Yes
a = {:colors => ["black", "green", "gold"],:teams => ["dolphins", "giants", "eagles"]}
p a 
#Can you have an array of hashes.. Yes

b = [{:name => "Allan", :age => 28, :height => "6ft"}, {:name => "Danny"}, {:name => "Lisa"}]
p b

#Exercise 11 Look up ruby APIS 
#http://edgeguides.rubyonrails.org/api_app.html
#http://apionrails.icalialabs.com/book/chapter_two

#Application programming interfaces (APIs) allow different application to talk
#APIs created using the RESTful Respresentational State Transfer model
# - Referencable using URI - Uniformed Resource Identifier 
# - Follow HTTP standard methods (CRUD) --> GET POST PUT DELETE 
# - Data represented in accepttable format JSON, XML/HTML, CSV, XLS, plain text 
