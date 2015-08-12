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

get('collections/:id/cds/new') do
  @collection = Organizer.find(params.fetch('id').to_i())
  erb(:collection_cd_form)
end

post('/cds') do
  title = params.fetch('title')
  artist = params.fetch('artist')
  @cd = CD.new(title, artist)
  @cd.save()
  @collection = Organizer.find(params.fetch('collection_id').to_i())
  @colelction.add_cd(@cd)
  erb(:success)
end

get('/cds/:id') do
  @cd = CD.find(params.fetch('id').to_i())
  @title = @cd.title()
  @artist = @cd.artist()
  erb(:cd)
end
