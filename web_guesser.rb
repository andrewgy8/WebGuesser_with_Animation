require 'sinatra'
require 'sinatra/reloader'


random_int = rand(100)
def difference(guess, random_int)
  difference = (random_int - guess).abs 
end

def guess_message(guess, random_int, difference)
  
  if guess > random_int  
    if difference > 5
      'Way too high'
    else
      'Too high'
    end
  elsif guess < random_int
    if difference > 5
      'Way too low'
    else
      'Too low'
    end
  elsif guess == random_int
    'Right on point'
  end
end

get '/' do
  guess = params['guess'].to_i
  difference = difference(guess, random_int)
  message = guess_message(guess, random_int, difference)
  erb :index, :locals => {:random_int => random_int, 
                          :message => message, 
                          :difference => difference
                        }
end

