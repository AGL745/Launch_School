def reverse_string(string)
  reversed = []
  arr_string = string.split('')
  (1..arr_string.length).each { |_x| reversed.push(arr_string.pop) }
  p reversed.join('')
end

reverse_string('mystring')
