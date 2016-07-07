require 'sinatra'
require 'sinatra/reloader'


random_int = rand(101)

get '/' do
  erb :index, :locals => {:random_int => random_int}
end

