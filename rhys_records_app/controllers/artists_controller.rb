require_relative('../models/artist.rb')

get '/artists' do
  @artists = Artist.all()
  erb(:"artists/index")
end