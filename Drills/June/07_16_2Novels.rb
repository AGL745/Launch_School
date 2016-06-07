novel = {
	Green_Eggs: 5,
	Harry_Potter: 8,
	Way_of_Kings: 6,

}


  puts "What do you want to do (create)(read)(update)(delete)? "
  answer = gets.chomp

case answer
when "create"
  puts "What book would you like to add?"
  title = gets.chomp.to_sym
  #novel[book]
  if novel[title.to_sym] .nil?

  puts "What rating between 1 and 10 do you give this book?"
  rating = gets.chomp.to_i
  novel[title] = rating
  puts "#{title} has been added to your hash with a rating of #{rating}!"
else puts "Book already in hash."
end
when "update"
  puts "What book's rating would you like to change? "
  title = gets.chomp.to_sym
  if novel[title].nil?
    puts "Book not inside hash!"
  else puts "What new rating would you give it? "
  rating = gets.chomp.to_i
  novel[title] = rating
  puts "#{title} rating is now #{rating}! "
  end
when "delete"
  puts "What title would you like to remove? "
  title = gets.chomp.to_sym
  if novel[title].nil?
    puts "Title does not exist. "
  else novel.delete(title)
    puts "Title was removed"
  end
when "read"
  puts "Your hash currently contains these items: #{novel}"
when "read2"
  novel.each do |key, value|
    puts "Your books are #{key}: #{value}}"
  end
else
  puts "Error! Wrong input."
end


puts "Heres what's in your hash now: #{novel}"
