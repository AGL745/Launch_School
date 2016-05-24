#Managing Request
#Error or quit process taking to long 

require 'sinatra' 

get '/halt' do
  "What will happen?" # message body
  #the halt command will be executed. 
  #additional parameters given along with halted text
  halt 500, {'Content-Type' => 'text/plain'}, 'you halted me!'
end
  
