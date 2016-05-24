my_array = [1,2,3,4,5,6,7]

my_array.each do |dane|
  puts dane
end

new_array = ['Dan', 'Mike', 3,'Derek']
new_array.each do |info|
  puts info
  if info == 'Mike'
    puts "This is big Mike"
  end
end


new_array.each { |x| puts x }

x = 0
new_array.each do |i|
  puts "#{x}. #{i}"
  x += 1
end



