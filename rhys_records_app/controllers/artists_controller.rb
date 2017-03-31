require_relative('../models/artist')

get '/artists' do
  @artists = Artist.all()
  erb(:"artists/index")
end