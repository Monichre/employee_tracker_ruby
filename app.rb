require('sinatra')
require("sinatra/activerecord")
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/division')
require('./lib/employee')


get('/') do
  @divisions = Division.all()
  erb(:index)
end

post('/divisions') do
  name = params.fetch('division_name')
  new_division = Division.new({:name => name})
  new_division.save()
  erb(:success)
end

get('/divisions/:id') do
  @division = Division.find(params.fetch('id').to_i())
  erb(:division)
end
