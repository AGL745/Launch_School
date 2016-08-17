VOWELS = %w(a e i o u).freeze

def vowel_remover(words)
  words.map do |word|
    chars = word.split('')
    VOWELS.each { |vowel| chars.delete(vowel) }
    chars.join('')
  end
end

p vowel_remover(%w(green yellow black orange))
