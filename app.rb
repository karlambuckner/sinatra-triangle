require('sinatra')
# require('sinatra/reloader')
require('./lib/triangle')
# also_reload('lib/**/*.rb')

get('/') do
  erb(:input)
end

get('/output') do
  # @length1 = params.fetch("length1")
  # @length2 = params.fetch("length2")
  # @length3 = params.fetch("length3")
  triangle_input = Triangle.new(params.fetch("length1").to_i, params.fetch("length2").to_i, params.fetch("length3").to_i)
  @triangle_output = triangle_input.type()
    # @string_to_display = "This cannot be a triangle, please enter new lengths."
    # @string_to_display = "This is an equilateral triangle."
    # @string_to_display = "This is an isosceles triangle."
    # @string_to_display = "This is a scalene triangle."
    erb(:output)
end
