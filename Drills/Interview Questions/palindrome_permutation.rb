require 'set'

def palindrome_permuation(string)
  unpaired_char = Set.new

  (0...string.length).each do |i|
    char = string[i]

    if unpaired_char.include? char
      unpaired_char.delete(char)
    else
      unpaired_char.add(char)
    end
  end
  unpaired_char.length <= 1
end

p palindrome_permuation('dad')
