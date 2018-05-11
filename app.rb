require 'sinatra'
require './config'

get '/' do
	erb(:bienvenida)
end

post '/partida' do 
	erb(:partida)
end
