class RejoQuemado
	def initialize numeroInicial
		@numeroInicial = numeroInicial
	end

	def valido numeroavalidar = 0
		if @numeroInicial.to_i < 0
			return "Digitó numero negativo"
		end

		if (@numeroInicial.to_i > 0 and @numeroInicial.to_s.split("").uniq.size == 3)
		resultado = @numeroInicial - numeroavalidar
			if resultado < 0
			resultado = resultado * (-1)
			end
			if resultado > 100 and resultado < 400 
				return "frio"
			elsif resultado >= 400 
				return "muy frio"
			elsif resultado >= 10 and resultado <= 100 
					return "tibio"
			elsif resultado >= 1 and resultado <= 9  
					return "caliente"
			else
				return("has ganado")
			end			
		else
			return("Numero a validar no tiene tres digitos")
		end
	end
end