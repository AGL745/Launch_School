novel = {
	Green_Eggs: 5,
	Harry_Potter: 8,
	Way_of_Kings: 6,

}

answer = "yes"
while answer == "yes"
puts "Do you want to add another book to your hash? "
answer = gets.chomp

case answer
when "yes"
  puts "What book would you like to add?"
  book = gets.chomp
  novel[book]
  puts "What rating from 1..10 would you give this book"
  rating = gets.chomp
  novel[book.to_sym] = rating.to_i
  puts "#{book} has been added to your hash with a rating of #{rating}!"
when "no"
  puts "Sounds good to me!"
end
end
puts "Heres what's in your hash now: #{novel}"
