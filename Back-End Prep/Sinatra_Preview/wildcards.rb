require 'sinatra'

get '/*' do 
  "This is your route using SPLAT wild card. First match gets executed (GREEDY) #{params[:splat]}\n"
end
#anything specified in wildcard * is stored in splat
