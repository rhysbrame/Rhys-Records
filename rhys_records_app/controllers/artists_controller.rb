require_relative('../models/artist.rb')

#index
get '/artists' do
  @artists = Artist.all()
  erb ( :'artists/index' )
end

#new artist
get '/artists/new' do
  erb ( :'artists/new')
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save
  redirect to ('/artists')
end

#show artists
get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb ( :'artists/show' )
end

