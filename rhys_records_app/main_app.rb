require('sinatra')
require('sinatra/contrib/all')
require('controllers/artists_controller')
require('controllers/albums_controller')
require('controllers/genres_controller')

get '/' do
  erb(:index)
end

get '' do
  redirect '/'
end