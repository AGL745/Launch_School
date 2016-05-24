require 'sinatra'

before do
  content_type :txt
end

#301 = permanent redirection, 302 (default) = temporary
get '/redirect' do
  redirect 'http://www.sinatrarb.com', 301
end



