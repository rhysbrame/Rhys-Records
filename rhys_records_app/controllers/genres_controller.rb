require_relative('../models/genre.rb')

#index
get '/genres' do
  @genres = Genre.all()
  erb ( :'genres/index')
end

#new genre
get '/genres/new' do
  erb ( :'genres/new')
end

post '/genres' do
  @genre = Genre.new(params)
  @genre.save
  redirect to ('/genres')
end

#show genres
get '/genres/:id' do
  @genre = Genre.find(params[:id])
  erb ( :'genres/show' )
end