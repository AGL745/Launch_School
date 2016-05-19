#Iterating Over Hashes

person = {name: 'Bob', weight: 200, height: '6ft', hair: 'black'}

person.each do |key, value| 
  puts "Bob's #{key} is #{value}"
end


