require 'sinatra'
require 'data_mapper'
require 'json'


class Budget
  include DataMapper::Resource
  property :id, Serial
  property :title, Text, :required => true
  property :initial, Integer, :required => true 
  property :created_at, DateTime
  property :updated_at, DateTime
end

DataMapper.finalize.auto_upgrade!

get '/' do
  'home'
end

get '/budget' do
  @bud = Budget.all order: :id.desc
  @bud.to_json
end

if Budget.count == 0 
  Budget.create(:title => "Doctor", :initial => 10000, :created_at => Time.now )
  Budget.create(:title => "Fire Fighter", :initial => 50000, :created_at => Time.now)
end

