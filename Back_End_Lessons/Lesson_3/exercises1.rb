# Launch School
# Exercises 1 - Lesson 3
#  Allan Latty

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
=begin
uniq without ! is not destrctive will put original numbers array
uniq method will return [1, 2, 3]
=end

=begin
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

bang(!) means the method mutates the caller
methods with "?" return a search value (boolean) if exist

what is != and where should you use it?
- Not equal comparitor operator. Should be used when looking for the opposite value

put ! before something, like !user_name
- Not equal to user_name or its value

put ! after something, like words.uniq!
- Causes method to become destructive. Mutates the caller

put ? before something
- Ternary operator

put ? after something
- possibly a method

put !! before something, like !!user_name
- Transforms object into boolean respresentations
=end

#Question 3
advice = "Few things in life are as important as house training your pet dinosaur."

#my answer
puts advice.sub("important", "urgent")
=begin
Returns a copy of str with the first occurrence of pattern replaced by the second argument. 
=end

#book answer
puts advice.gsub!("important", "urgent")
=begin
Returns a copy of str with the all occurrences of pattern substituted for the second argument. 
=end

#Q4

numbers2 = [1,2,3,4,5]
numbers2.delete_at(1)
#deletes at chosen index - destructive
numbers2.delete(1)
#deletes all occurences of value - destructive

#Q5
#Programmatically determine if 42 lies between 10 and 100.

num = 42
puts (10..100).cover?(42)

#Q6
famous_words = "seven years ago..."
first_part =  "Four score and "
puts first_part + famous_words
puts first_part << famous_words
puts famous_words.prepend("Four score and ")

#Q7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)")}

p how_deep
eval(how_deep)

#Q8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

#Q9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

xx = flintstones.to_a
myarray = xx[2]
#myarray.push(flintstones("Barney"))
#myarray.push(flintstones.key(2))
p xx
p myarray

#book answer
flintstones.assoc("Barney")

=begin
Searches through the hash comparing obj with the key using ==. Returns the key-value pair (two elements array) or nil if no match is found. See Array#assoc.
=end

#Q10
#my answer
em_hash = {}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones.map.with_index{|v,i| em_hash.store(v, i)}
p em_hash

#book answer
flintstones_hash = {}
flintstones.map.with_index{|name, index| flintstones_hash[name] = index}
p flintstones_hash