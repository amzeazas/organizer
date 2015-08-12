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

get('/collections') do
  @collections = Organizer.all()
  erb(:collections)
end

post('/collections') do
  name = params.fetch('name')
  Organizer.new(name).save()
  @collections = Organizer.all()
  erb(:success)
end

get('/collections/:id') do
  @collection = Organizer.find(params.fetch('id').to_i())
  erb(:collection)
end
