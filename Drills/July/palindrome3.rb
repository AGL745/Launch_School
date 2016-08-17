require 'set'

def palindrome_tester(word)
  unpaired_word = Set.new

  (0..word.length).each do |i|
    char = word[i]
    if unpaired_word.include?(char)
      unpaired_word.delete(char)
    else
      unpaired_word.add(char)
    end
  end
  unpaired_word.length <= 1
end

def palindrome_permutation(string)
  cont_arr = []
  chars_arr = string.split('')
  (0...chars_arr.length).each { |_x| cont_arr.push(chars_arr.pop) }
  p "Reversed string #{cont_arr.join('')}"
  return true if cont_arr.join('') == string
  false
end

def palindrome_permutation2(string)
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

def palindrome_detector(arr)
  result_arr = []
  arr.each do |word|
    result_arr.push palindrome_permutation2(word)
  end
  result_arr
end

help = %w(civic hello dad mam armor)
p palindrome_detector(help)
