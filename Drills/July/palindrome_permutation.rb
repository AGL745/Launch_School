require 'set'

def palindrome_permutation(string)
  my_set = Set.new

  (0...string.length).each do |x|
    char = string[x]
    if my_set.include? char
      my_set.delete char
    else
      my_set.add char
    end
  end
  p my_set
  my_set.length <= 1
end
p palindrome_permutation('civic')
