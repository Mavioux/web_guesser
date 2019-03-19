require 'sinatra'
require 'sinatra/reloader'

number = rand(101)
guess = "villos"
message = ""



get '/' do
  guess = params['guess']


  if guess != nil
    if guess.to_i > number
      message = "Too high!"
    elsif guess.to_i < number
      message = "Too low!"
    else
      message = "You guessed the number! It was: #{number}"
    end
  end

  erb :index, :locals => {:number => number, :message => message}
end
