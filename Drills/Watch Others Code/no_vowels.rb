VOWELS = %w(a e i o u)

def remove_vowels(string)
  string.map do |value|
    my_chars = value.split('')
    VOWELS.each { |vowel| my_chars.delete(vowel) }
    my_chars.join('')
  end
end

words = %w(green yellow black white)

p remove_vowels(words)
