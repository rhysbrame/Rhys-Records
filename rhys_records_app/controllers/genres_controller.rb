require_relative('../models/genre.rb')

get '/genres' do
  @genres = Genre.all()
  erb ( :'genre_view/genres_index')
end