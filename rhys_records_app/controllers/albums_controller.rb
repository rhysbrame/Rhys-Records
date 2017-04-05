require_relative('../models/album.rb')

#index
get '/albums' do
  @albums = Album.all()
  # @genres = Genre.all()
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
  @albums = Album.find(params[:id])
  erb ( :'albums/show')
end
