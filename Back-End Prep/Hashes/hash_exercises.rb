#Exercise 1 
family = {uncles: ["bob", "joe", "steve"], sisters: ["whitney", "judith", "Alicia"], brothers: ["jake", "tim", "andrew"], aunts: ["Chelsea", "sarah", "lisa"]}

#Immediate family members 

 immediate_family = family.select do |k, v|
   k == :sisters || k == :brothers
 end

 puts immediate_family
 #Get only values
 #  puts immediate_family.values
 #Flatten nested arrays
 #  puts immediate_family.values.flatten
 #assign value to array
 arr = immediate_family.values.flatten
#Final Array
p arr

#Exercise 2 Merge 
cat = {name: "charlie"}
weight = {weight: "10 LBs"}

puts cat.merge(weight)
p "#{cat} Non destructive"

puts cat
puts weight

#Destructive Merge
cat.merge!(weight)
puts cat # 'Destructive Merge'
puts weight

#Exercise 3
#Hash iterator

my_hash = { name: "Dan", age: 34, height: "6ft 1in", hometown: "NYC"}

keys_hash = my_hash.keys.each { |k| puts k }
values_hash = my_hash.values.each { |v| puts v}
hash_keyvalue = my_hash.each {|key, value| puts "#{key} is #{value}"}

#Exercise 4 
person = {name: "Bob", occupation: "web developer", hobbies: "painting"}
#access person name
puts person[:name]

#Exercise 5
person.has_value?("Bob")
#has_value? method determines if value if present inside array

#Exercise 6
#Find the anagram

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
                      'flow', 'neon']
require = {}
words.each do |each_word| 
  word_sorted = each_word.split("").sort.join
  if require.has_key?(word_sorted)
    require[word_sorted].push(each_word)
  else
    require[word_sorted] = [each_word]
  end
end

require.each do |key, value|
  puts "-------"
  p value
end

#Exercise7
# x = "hi there"
#my_hash = {x: "some value"}
#my_hash2 = {x => "some value"}
#The first syntax will result in symbol x: being the key for "some value" inside hash
#The second will cause the "hi_there" to be the key for "some value"

#Exercise 8
#Error - Answer is B - no method called keys for Array Object 
