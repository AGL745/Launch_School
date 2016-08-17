def string_reverse(string)
  array_cont = []
  reverse_array = string.split('')

  string.length.times do
    array_cont << reverse_array.pop
  end
  array_cont.join('')
end

puts string_reverse('help')
