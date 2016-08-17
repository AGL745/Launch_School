def palindrome_permutation(string)
  cont_arr = []
  chars_arr = string.split('')
  (0...chars_arr.length).each { |_x| cont_arr.push(chars_arr.pop) }
  p "Reversed string #{cont_arr.join('')}"
  return true if cont_arr.join('') == string
  false
end

p palindrome_permutation('civic')
p palindrome_permutation('civicl')
