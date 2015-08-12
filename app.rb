require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/CD')
require('./lib/organizer')

get('/') do
  erb(:index)
end

get('/collections/new') do
  erb(:collections_form)
end
