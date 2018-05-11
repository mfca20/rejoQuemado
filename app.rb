require 'sinatra'
require './config'
require './lib/rejoQuemado'

get '/' do
	erb(:bienvenida)
end

post '/partida' do 
	resultado = ""
	dato = params["probarvalor"]
	
	if dato == nil
		session['resultado'] = "#{dato}"
	else
		rq = RejoQuemado.new (123)
		resultado = rq.valido(dato.to_i)
		session['resultado'] = "#{resultado}"
	end  
	erb(:partida)
end
