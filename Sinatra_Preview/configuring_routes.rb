#Configuring Routes Using sinatra

require 'sinatra'

#use a hash to store multiple paths, one handler

['/this', '/that', '/other'].each do |route|
  get route do
    "\"#{route}\" is my url path, using POST\n"
  end

  post route do
    "\"#{route}\" is my url path, using POST\n"
  end

  delete route do
    "\"#{route}\" is my url path, using DELETE\n"
  end
end


