puts "How old are you? "
age = gets.chomp
age = age.to_i
value = 10.to_s
output = "In " + value + " years you will be: "
puts output + (age + 10).to_s
value = 20.to_s
puts output + (age + 20).to_s
value = 30.to_s
puts output + (age + 30).to_s
value = 40.to_s
puts output + (age + 40).to_s
