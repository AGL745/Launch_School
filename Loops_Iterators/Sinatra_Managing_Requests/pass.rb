#Pass - Search for another available match
require 'sinatra'

before do
  content_type :txt
end


#It will be plain text

get %r{/[Rr]uby} do

  # regular expression that with translates to 
  # matches this pattern: "/Ruby"
  # then pass to below
  pass if request.path =~ /\/Ruby/
    "There is a better match!"
end

get '/Ruby' do
  "I am a better match.. pick me!"
end

