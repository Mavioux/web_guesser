require 'sinatra'
require 'sinatra/reloader'

number = rand(101)
guess = "villos"
message = "I am empty"



get '/' do
  guess = params['guess']
  puts guess

  if guess.to_i > number
    message = "Too high!"
    puts "I am too high"
  end
  
  erb :index, :locals => {:number => number, :message => message}
end







get '/' do
  erb :index, :locals => {:number => number, :message => message}
end
