require 'sinatra'
require './config'

get '/' do
	erb(:bienvenida)
end

post '/partida' do 
	dato = params["probarvalor"]
	if dato == nil
		session['resultado'] = "#{dato}"
	else
		session['resultado'] = "caliente"
	end  
	erb(:partida)
end
