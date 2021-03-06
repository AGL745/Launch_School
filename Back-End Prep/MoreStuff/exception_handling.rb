names = ['bob', 'joe', 'steve',nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it"
  rescue
    puts "Something went wrong"
  end
end

#inline_exception

zero = 0 
puts "Before each call"
zero.each {|element| puts element } rescue puts "Can't do it"
puts "After each call"


#Using a pre defined exception 
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(4, 0)
puts divide(16,4)
