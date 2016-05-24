a = "Allan"
b = "Gadman"

puts a +" " + b
puts "'Allan'+'Gadman'"

my_number = 1024
puts my_number % 1023
puts my_number % 1024
puts my_number % 1022 
puts my_number % 1020

my_hash = {:mov1 => 1975, :mov2 => 2004, :mov3 => 2013, :mov4 => 2001, :mov5 => 1981}
puts my_hash[:mov1]
puts my_hash[:mov2]
puts my_hash[:mov3]
puts my_hash[:mov4]
puts my_hash[:mov5]

my_array = [my_hash[:mov1],my_hash[:mov2],my_hash[:mov3],my_hash[:mov4],my_hash[:mov5]]
puts my_array[0]
puts my_array[1]
puts my_array[2]
puts my_array[3]
puts my_array[5]

a =  5*4*3*2*1
puts a
puts a * 6
puts a * 6 * 7
puts a * 6 * 7 * 8

b = (3.0 * 3.0) + (4.9 * 4.9) + (5.8 * 5.8)
puts b

#syntax error on line 2. Interprettor expected a "}" instead found a ")"


