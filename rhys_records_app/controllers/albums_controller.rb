require_relative('../models/album.rb')

get '/albums' do
  @albums = Album.all()
  # @genres = Genre.all()
  erb ( :'albums_view/albums_index' )
end