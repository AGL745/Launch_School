#Loops and Iterators
#Conditional Loops

x = 0 
while x <= 10
  if x.odd?
    puts x
  end
  x += 1 
  puts "Done!"
end

y = 0 
while y <= 10
 # puts y
  if y == 3
    puts "Y is equal 3"
    y += 1
    next
  elsif x.odd?
    puts y
  end
  y += 1 
  if y == 9
    break
  end
end


