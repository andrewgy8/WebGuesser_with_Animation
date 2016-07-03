require 'sinatra'
require 'sinatra/reloader'


random_int = rand(101)

get '/' do
  "The SECRET NUMBER is #{random_int} where #{random_int} 
  is the secret number."
end

