#Create program that finds anna gram of hash
#Program Name: Hash Sorter Anagrams

names = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#Analyze given data data structure and types
#names is an Arrany.new type of String values.
#Reading and Accessing names[0] = 'demo' <-- Type String

#Create type to store return data. Can use Array or Hash data structures
#Let's go with array


#Begin method 
def my_anagram(type_array) 
  #Create Hash container
  storage_hash = {} 
  #Take given array argument and opperate on each element.
  #Anagrams are words that can be spelled using the same letters. Order inmaterial.  

  #Split text into Array / Sort String.split("") Array using Array.sort. / String.join 
  #Iterate over array input

  type_array.each do |word|
    word_sorted =  word.split("").sort.join
    #Check to see if word sorted is already in container (storage_array)
    if storage_hash.has_key?(word_sorted)
      storage_hash[word_sorted].push(word)
    else
      #add the new unique storage key
      storage_hash[word_sorted] = [word]
    end
  end
  #Iterate threw your storage and print results
  storage_hash.each do |key, value|
    puts "---#{key}----"
    p value
  end
end

my_anagram(names)                               
