p [1, 2, 3].select { |_x| "this is so true" }

p [4, 5, 6].select { |_p| nil }


p [2, 3, 4].map { |_x| p "put this in my array"}

def change(param)
    p param.object_id
    p param + " world"
    p param.object_id
  end
  greeting = "hello"
  p greeting.object_id
  change(greeting)
  puts greeting
  p greeting.object_id