require 'sinatra'

#your url path should be similar to /name?describe=something

get '/:name' do
  "#{params[:name]} #{params[:describe]} Sinatra!"
end

