# Assessment One

=begin

## Question
- [ ] return value of an expression
1.
- [ ] whether there are side effects
1.
- [ ] whether new objects are created
1.
- [ ] whether something is being output
1.

**Underlying Principle**


## Question 1
- [x] return value of an expression
Kernel puts method takes and obj parameter as argument and returns nil
- [ ] whether there are side effects
- [x] whether new objects are created
1. New int obj created and reassigned `str = 1`
- [x] whether something is being output
2 is printed to the standard output by `Kernel.puts` method call

**Underlying Principle**
This code demonstrates variable scope and blocks. `loop do ..end` is a block and it reassigns variable `str` to 2 because it was declared in the parent scope. The `puts` method prints 2 because `str` was instantiated in the parent scope allowing `loop do` block to access it and modify it.

## Question 2
- [ ] return value of an expression
1. No value is returned just an error.
- [ ] whether there are side effects
1. n/a
- [x] whether new objects are created
1. New int obj created `str = 2`
- [x] whether something is being output
1. The following error is return by the ruby interpreter. The interpreter does not know if `str` is a variable or method.
> scrap2.rb:6:in `<main>': undefined local variable or method `str' for main:Object (NameError)

**Underlying Principle**
The `loop do.. end` block creates a local variable called `str`. This variable is not available to a higher scope where the `puts` method is called. The error tells you that the object `str` does not exist, in the same scope as calling method.

## Question 3
- [ ] return value of an expression
Unknown
- [ ] whether there are side effects
n/a
- [x] whether new objects are created
1. New int obj created `str = 2`
- [ ] whether something is being output
Unknown

**Underlying Principle**
You cannot say with certainty what the output for the code snippet will be. As is the `str` variable is not in the same scope as the `puts` method, this will cause a guaranteed error. More code is needed, primarily instantiation of `str` within `puts` method scope.

## Question 4
- [ ] return value of an expression
1. No value is returned just an error.
- [ ] whether there are side effects
1. n/a
- [x] whether new objects are created
1. New string obj created `str = 'hello'`
- [x] whether something is being output
1. The following error is return by the ruby interpreter. The interpreter does not know if `str` is a variable or method.
> scrap2.rb:4:in `a_method': undefined local variable or method `str' for main:Object (NameError) from scrap2.rb:7:in `<main>'

**Underlying Principle**
The method, `def a_method .. end`, does not have access to the `str` variable, because they are not in the same scope. Methods create their own scope and must be passed local variables outside their scope as arguments.

## Question 5
- [x] return value of an expression
1. The method `a_method` implicitly returns str = "world". But this return is not captured or utilized.
2. The `puts` method takes the object `str` and returns `nil`
- [ ] whether there are side effects
1. no
- [x] whether new objects are created
1. 2 new string objs created. Both named 'str'.. `str = 'hello'` and `str = 'world'`
- [x] whether something is being output
1. The `puts` method outputs the word 'hello' to console.

**Underlying Principle**
1. This code snippet demonstrates local scope principles. The `str` variables declared each have their own scopes.
2. The difference here is that the `str` variable is declared in both scopes. These are not the same variable. They simply share the same name. This point is demonstrated by the different object_id with below snippet.

```
 str = "hello"

 def a_method
   str = "world"
   puts str.object_id
 end

 puts a_method
 puts str
 puts str.object_id
 ```
3. Referring to the snippet above the only relationship between the two `str` variables is the name. They are not the same. Yes they are different. They do not share the same scope.

## Question 6
- [x] return value of an expression
1. Line 6 `puts` method takes obj and returns nil
2. Line 7 `puts` method takes obj and returns nil
- [x] whether there are side effects
1. The `<<` method mutates (destructive) the caller.
- [x] whether new objects are created
1. Obj type string created ` a = 'hello'`
2. Obj type string created  `b = a`
3. Obj `a` type string reassignment ` a = 'hi'
- [ ] whether something is being output
1. Method `puts a` prints 'hi world' to console
2. Method `puts b` prints 'hello' to console

**Underlying Principle**
1. The variable `b` is still equal to 'hello' because the variable `a` was reassigned `a= 'hi'` this removed the shared reference in memory. Each variable is not pointing at different points in memory.

## Question 7
- [ ] return value of an expression
1. n/a
- [ ] whether there are side effects
1. n/a
- [x] whether new objects are created
1. Two objects are created. `a = 'hello'` and `b = 'world'`
- [ ] whether something is being output
1. no output

**Underlying Principle**
1. 4 variables are created
2. 2 objects are created
3. A variable is defined a pointer to an object in memory (name)
4. A object is defined as something you can assign to a variable or returned through method.

```
a = "hello"
b = "world"

c = a
d = b
b = a
a = c

puts a.object_id
puts b.object_id
puts c.object_id
puts d.object_id
```
5. The above code shows only two (2) unique object_ids. The rest are just pointers.

## Question 8
- [x] return value of an expression
1. `puts` method returns nil and prints 'hello' to console
2. Method `def change` implicitly returns 'hello world'. Not stored or printed.
- [ ] whether there are side effects
1. No. `+` method is not destructive
- [x] whether new objects are created
1. New obj `greeting = 'hello'` created
- [x] whether something is being output
1. `puts` method prints hello to console.

**Underlying Principle**
1. This code demonstrates a non-mutating or non-destructive method call. `param + ' world'`. The output is not whats expected because only the local scope  param is modified.


## Question 9
- [x] return value of an expression
1. `puts` method returns nil and prints 'hello world' to console
2. Method `def change` implicitly returns 'hello world'.
- [x] whether there are side effects
1. Yes. `<<` method is destructive/mutating method.
- [x] whether new objects are created
1. New obj `greeting = 'hello'` created
- [x] whether something is being output
1. `puts` method prints hello to console.

**Underlying Principle**
1. This code demonstrates a mutating/destructive method call. `param << ' world'`. This mutating method `<<` permanently modifies the caller argument passed.

## Question 10
- [x] return value of an expression
1. `puts` returns nil and prints 'hello' to console
2. Method `def change` implicitly returns 'hi world'. Not stored or printed.
- [x] whether there are side effects
1. local variable param (method scope) modified with mutating method `<<`
2. parameter value was reassigned to 'hi'.. `param = 'hi'`
- [x] whether new objects are created
1. String obj `param = 'hi'` created.
2. String obj `greeting = 'hello'` created
- [x] whether something is being output
1.`puts` method prints hello to console.

**Underlying Principle**
1. After obj `greeting` was passed as an argument to `def change(param)` method it is assigned to param. Line 2 assigned `param = 'hi' ` to a new value changing the reference point in memory. The destructive shovel (<<) method call modifies this new point in memory. The `greeting` variable is not modified because the variable is reassigned.

## Question 11
- [x] return value of an expression
1. `puts` method returns nil and prints 'hello' to console
2. Method `def change` implicitly returns last line.
- [x] whether there are side effects
1. Multiple shovel (<<) calls against method `def change(param)` variable param
2. `param += 'greeting'` reassigns the local variable param to new memory reference prior to mutating and then again to a new reference in memory with `param = 'hi'`
- [x] whether new objects are created
1. String obj `greeting = 'hello'`
2. String obj 'param += greeting'
- [x] whether something is being output
1. `puts` method prints hello to console.

**Underlying Principle**
1. After obj `greeting` was passed as an argument to `def change(param)` method it is assigned to param. Line 2 reassigned `param += 'hi' ` to a new value changing the reference point in memory. **+= is the same as param = param + 'greeting'**


## Question 12
1. Define Array#map
- The Array method map take in a collection and iterates through that collection modifying each element as per the instructions passed inside the block. After reaching collection final index a new array is returned. This method is not destructive.

## Question 13
1. Define Array#select
- The Array method select take in a collection and iterates through that collection this each element to see if it meets code specified inside the block. If element value meets block criteria it is marked true and push to a new array. After reaching collection final index a new array is returned. This method is not destructive.

## Question 14
  [1, 2, 3].map {|n| n + 1}

  [1, 2, 3].map {|n| n += 1}


**Underlying Principle**
1. Both snippets return the same out because the same operation is taking place.
- Snippet one take map method takes in the array and assigns each element to the variable n it then adds 1 `n+

## Question 14
- [ ] return value of an expression
1.
- [ ] whether there are side effects
1.
- [ ] whether new objects are created
1.
- [ ] whether something is being output
1.

**Underlying Principle**

## Question 15
- [ ] return value of an expression
1.
- [ ] whether there are side effects
1.
- [ ] whether new objects are created
1.
- [ ] whether something is being output
1.

**Underlying Principle**

## Question 16
- [ ] return value of an expression
1.
- [ ] whether there are side effects
1.
- [ ] whether new objects are created
1.
- [ ] whether something is being output
1.

**Underlying Principle**

## Question 17
- [ ] return value of an expression
1.
- [ ] whether there are side effects
1.
- [ ] whether new objects are created
1.
- [ ] whether something is being output
1.

**Underlying Principle**


## Question 18
- [ ] return value of an expression
1.
- [ ] whether there are side effects
1.
- [ ] whether new objects are created
1.
- [ ] whether something is being output
1.

**Underlying Principle**
=end

str = 1

  loop do
    str = 2
    break
  end

  Kernel.puts str