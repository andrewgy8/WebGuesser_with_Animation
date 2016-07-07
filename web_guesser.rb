require 'sinatra'
require 'sinatra/reloader'


random_int = rand(100)

get '/' do
  def guess_message(guess, random_int)
    difference = (random_int - guess).abs
    
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

  guess = params['guess'].to_i

  message = guess_message(guess, random_int)

  erb :index, :locals => {:random_int => random_int, :message => message}
end

