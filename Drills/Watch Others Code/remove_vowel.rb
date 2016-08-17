VOWELS = ['a', 'e', 'i', 'o', 'u']

def remove_vowels(strings)
  strings.map do |string|
    chars = string.split('')
    VOWELS.each { |vowel| chars.delete(vowel) }
    chars.join('')
  end
end

words = %w(green yellow black white)

p remove_vowels(words)