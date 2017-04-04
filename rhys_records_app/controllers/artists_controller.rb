require_relative('../models/artist.rb')
require('pry')

get '/artists' do
  @artists = Artist.all()
  erb ( :'artists/index' )
end

get '/artists/new' do
  erb ( :'artists/new')
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  redirect to ('/artists')
end