require 'sinatra'

['/this', '/that', '/other'].each do |route|
  get route do
    "\"#{route}\" is my URL path, useing GET\n"
  end

  post route do
    "\"#{route}\" is my url path, using POST\n"
  end

  delete route do
    "\"#{route}\" is my url path, using DELETE\n"
  end
end

