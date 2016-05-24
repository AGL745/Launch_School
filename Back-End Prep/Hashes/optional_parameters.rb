#Optional Hash into Method 

def optional_hash(name, option = {})
  if option.empty?
    puts "Hello nice to meet you #{name}"
  else
    puts "Hello #{name}, nice to meet you. You are #{option[:age]} years old and your eyes are #{option[:eyes]}"
  end
end

optional_hash("Allan")
optional_hash("Allan", {age: 28, eyes: 'Black'})

