require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
# require('/lib/parcels')

get('/') do
  erb(:index)
end

get('/output') do
  length = params.fetch("length")
  width = params.fetch("width")
  depth = params.fetch("depth")
  weight = params.fetch("weight")
  parcel = Parcel.new(length, width, depth, weight)
  @volume = parcel.volume()
  @cost = parcel.cost_to_ship()
  erb(:output)
end
