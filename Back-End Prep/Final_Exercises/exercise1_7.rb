#Exercice 1

a = [1,2,3,4,5,6,7,8,9,10]
p a
a.each { |b| p b }

#Exercise 2 

a.each { |c| p c if c > 5 }

#Exercise 3 
text_holder = a.select {|a| p a if a > 5 && a % 2 != 0 }
p text_holder
#Exercise 4
a.unshift(11)
p a
a.push(0)
p a
#Exercise 5
a.pop
p a
a << 3
p a
#Exercise 6

#Exercise 7
#Hash - Key:Value pair of data. Written with {key: "doggie"}
#Array ordered list of elements filed with an reference index