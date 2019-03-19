require 'sinatra'
require 'sinatra/reloader'

number = rand(101)
guess = "villos"
message = ""
color = "white"



get '/' do
  guess = params['guess']


  if guess != nil
    if guess.to_i > number
      message = "Too high!"
      color = "red"
    elsif guess.to_i < number
      message = "Too low!"
      color = "red"
    else
      message = "You guessed the number! It was: #{number}"
      color = "green"
    end
  end

  erb :index, :locals => {:number => number, :message => message, :color => color}
end
