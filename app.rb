require 'sinatra'
require './config'

get '/' do
	erb(:bienvenida)
end