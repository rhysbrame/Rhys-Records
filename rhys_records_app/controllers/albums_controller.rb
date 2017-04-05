require_relative('../models/album.rb')
require('pry')

#index
get '/albums' do
  @albums = Album.all()
  erb ( :'albums/index' )
end

#new album
get '/albums/new' do
  @artist = Artist.all
  @genre = Genre.all
  erb (:'albums/new')
end

post '/albums' do 
  @album = Album.new(params)
  @album.save
  redirect to ('/albums')
end

#show albums
get '/albums/:id' do 
  @album = Album.find(params[:id])
  erb ( :'albums/show')
end

#update albums
get '/albums/:id/edit' do
  @album = Album.find(params[:id])
  @artists = Artist.all
  @genres = Genre.all
  erb ( :'albums/edit')
end

post '/albums/:id' do
  @album = Album.new(params)
  @album.update
  erb ( :'albums/show')
end