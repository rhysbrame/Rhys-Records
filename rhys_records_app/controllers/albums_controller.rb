require_relative('../models/album.rb')

get '/albums' do
  @albums = Album.all()
  erb ( :'albums_view/index' )
end