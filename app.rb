require 'sinatra'
require './config'

get '/' do
	erb(:bienvenida)
end

post '/partida' do 
	dato = params["probarvalor"]
	if dato == nil
		session['resultado'] = "#{dato}"
	elsif dato.to_i == 110
		session['resultado'] = "tibio"
	elsif dato.to_i == 119
		session['resultado'] = "caliente"
	elsif dato.to_i == 19
		session['resultado'] = "frio"
	else
		session['resultado'] = "has ganado"
	end  
	erb(:partida)
end
