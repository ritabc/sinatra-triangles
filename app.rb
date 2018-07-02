require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @side_one = params.fetch("side_one")
  @side_two = params.fetch("side_two")
  @side_three = params.fetch("side_three")
  triangle = Triangle.new(@side_one, @side_two, @side_three)
  @string_to_display = triangle.check_sides()
  erb(:output)
end
