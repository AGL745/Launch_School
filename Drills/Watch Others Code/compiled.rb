def balancer(string)
  return false unless string.count('(') == string.count(')')

  paren_count = 0

  string.split('').each do |char|
    paren_count += 1 if char == '('
    paren_count -= 1 if char == ')'
    return false if paren_count < 0
  end
  true
end

p balancer('hi')
p balancer('(hi')
p balancer('(hi)')
p balancer('(()))(')

def fizzbuzz(num1, num2)
  fizz_array = []
  (num1..num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      fizz_array.push('FizzBuzz')
    elsif num % 3 == 0
      fizz_array.push('Fizz')
    elsif num % 5 == 0
      fizz_array.push('Buzz')
    else
      fizz_array.push(num)
    end
  end
  fizz_array
end

p fizzbuzz(1, 40)

VOWELS = %w(a e i o u).freeze

def vowel_remover(word)
  word_arr = word.split('')
  VOWELS.each do |vowel|
    word_arr.delete(vowel) if word_arr.include?(vowel)
  end
  word_arr
end

p vowel_remover('baker')

def prime_tester(num)
  (2...num).each do |x|
    return " #{num} not prime" if num % x == 0
  end
  num
end

def prime_print(num1, num2)
  cont_arr = []
  (num1..num2).each do |num|
    cont_arr.push prime_tester(num)
  end
  cont_arr
end

p prime_print(1, 10)

PRODUCTS = [
  { name: 'Thinkpad x210', price: 220 },
  { name: 'Thinkpad x220', price: 250 },
  { name: 'Thinkpad x250', price: 979 },
  { name: 'Thinkpad x230', price: 300 },
  { name: 'Thinkpad x230', price: 330 },
  { name: 'Thinkpad x230', price: 350 },
  { name: 'Thinkpad x240', price: 700 },
  { name: 'Macbook Leopard', price: 300 },
  { name: 'Macbook Pro', price: 600 },
  { name: 'Macbook', price: 1449 },
  { name: 'Dell Latitude', price: 200 },
  { name: 'Dell Latitude', price: 650 },
  { name: 'Dell Inspiron', price: 300 },
  { name: 'Dell Inspiron', price: 450 }
].freeze

query = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(request)
  name = request[:q]
  min_price = request[:price_min]
  max_price = request[:price_max]

  PRODUCTS.each do |hash|
    if hash[:name].downcase.include?(name) && hash[:price].between?(min_price, max_price)
      puts hash
    end
  end
end

search(query)

search(query2)


def reverse_string(string)
  str_arr = string.split('')
  cont_arr = []

  (0...str_arr.length).each do |_x|
    cont_arr.push(str_arr.pop)
  end
  cont_arr.join('')
end

p reverse_string('thisismystring')