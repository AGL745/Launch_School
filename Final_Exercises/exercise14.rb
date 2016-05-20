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