#More Stuff Exercise

#Exercise 1

word_list = []
word_list = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def contains_lab(array)
  array.each do |word|
    if /lab/i.match(word)
      puts "#{word} matched"
    end
  end
end

contains_lab(word_list)

#Exercise 2 
#def execute(&block)
#  block
#end

#execute { puts "Hello from inside the execute method!"}
#Nothing block.call should be executed

#Exercise 3
# Exception handling allows your application to continue executing after flaggin an exception
# Solves your app completely crashing 

#Exercise 4

def execute(&block)
  block.call
end

execute { puts "Block is executing as called"} 

#Exercise 5
# "&block" is require to perform callback on block code
# Allows block to be passed as parameter


