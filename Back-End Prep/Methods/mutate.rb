a = [1,2,3,4]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

#contrast with nonmutating method 
b = [4,3,2]

def no_mutate(array)
  array.last
end
p "Variable before: #{b} no change"
no_mutate(b)
p "Variable after: #{b} still no change"
