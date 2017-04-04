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

#update artists
get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb ( :'artists/edit')
end

post '/artists/:id' do
  @artist = Artist.new(params)
  @artist.update
  erb ( :'artists/show' )
end

#delete artist
post '/artists/:id/delete' do
  @artist = Artist.find(params[:id])
  @artist.delete()
  redirect '/artists'
end








