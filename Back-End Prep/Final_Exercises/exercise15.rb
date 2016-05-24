#Exercise 15

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr
arr.delete_if {|x| x.start_with?("s")}
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr
arr.delete_if {|x| x.start_with?("s","w")}
p "No s's or w's #{arr}"