require 'sinatra'
#route URL


get '/' do
    "Hello World"
end

#song URL
get '/song' do
  "Strangers in the night.."
end

#upload image to your profile
put '/profile' do
  "delete something"
end

post '/profile' do
  "Adjust profile"
end

