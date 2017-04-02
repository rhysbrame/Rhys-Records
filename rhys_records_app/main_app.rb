require('sinatra')
require('sinatra/contrib/all')
require_relative('./controllers/artists_controller')
require_relative('./controllers/genres_controller')
require_relative('./controllers/albums_controller')

get '/' do
  erb(:index)
end

get '' do
  redirect '/'
end