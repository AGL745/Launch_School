a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
# puts print is equal to 7

a = 7
def my_value2(a)
  a += 10
end

my_value2(a)
puts a
# puts print is still equal to 7

a = 7
def my_value3(b)
  a = b
end

my_value3(a + 5)
puts a
# puts print is still equal to 7

a = "Xyzzy"
def my_value4(b)
  b[2] = '-'
end

my_value4(a)
puts a
# puts prints string 'Xy-zy', this is because
# strings are mutable and the [] method is
# destructive

a = "Xyzzy"
def my_value6(b)
  b = 'yzzyX'
end

my_value6(a)
puts a

# puts prints string "Xyzzy" b = 'yzzyX' is reassignment

a = 7
def my_value7(b)
  b = a + a
end

my_value(a)
puts a

# this will return error. variable a is outside method scope.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
 # puts prints 3 because this is a block. This block shares the same scope as a.

array = [1, 2, 3]
array.each do |element|
  a = element
end
puts a
# error returned a is within the scope of the block

a = 7
array = [1, 2, 3]
array.each do |a|
  a += 1
end
puts a
# shadowing is taking place because the same variable is used as a parameter for loop puts prints 7

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# error is returned variable a is not within scope of method


