#Array Section Exercises
arr = [ 1,3,5,7,8,11]
number = 3

def inarray(arr,value) 
  if arr.include?(3)
    puts "#{arr} has the value #{value}"
  else
    puts "Here is array #{arr}"
  end
end

inarray(arr,number)

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

puts arr

ary = ["b", "a"]
ary = ary.product([Array(1..3)])
ary.first.delete(arr.first.last)
puts ary

#Exercise 3
#print example

arr = [["test", "hello", "world"],["example", "mem"]]
puts arr[1][0] #prints example

#Exercise 4
#What each method returns

arr2 = [15,7,18,5,12,8,5,1]

arr.index(5) 
#will return 3

#   arr.index[5]
     #returns error stating undefined method '[]'

arr[5]
#returns value at index 5 (8)

#Exercise 5
string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]
#a = "e", b = "A", c = nil

#Exercise 6
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names

#Exercise 7
array = [1,2,3,4,5]
mutate_array = array.map { |val| val += 2 }
p array
p mutate_array

