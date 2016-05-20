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

