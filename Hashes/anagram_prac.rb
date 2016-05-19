words = ['none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
                      'flow', 'neon']


#Find anagram
#Will store inside hash 

container_hash = {}
#Iterate over your list of words
words.each do |my_word|
  #Convert each word to a array so you can sort it 
  new_word =  my_word.split("").sort.join
  #Check to see if sort string is already present
  if container_hash.has_key?(new_word)
    #add the orginal word as value to new_word key
    container_hash[new_word].push(my_word)
  else
    #create new key with sorted word
    container_hash[new_word] = [my_word]
  end
end

container_hash.each do |k, v|
  puts "--#{k}--"
  p v
end




