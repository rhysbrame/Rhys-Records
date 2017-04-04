require_relative('../models/album.rb')

#index
get '/albums' do
  @albums = Album.all()
  # @genres = Genre.all()
  erb ( :'albums/index' )
end

#new album
get '/albums/new' do
  erb (:'albums/new')
end

