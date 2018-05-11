require './lib/rejoQuemado.rb'
describe RejoQuemado do 

	it "el numero debe ser de 3 digitos" do 
		pf = RejoQuemado.new "12345"
		expect("el numero debe ser de 3 digitos")
	end

	it "el numero NO debe ser negativo" do 
		pf = RejoQuemado.new "-456"
		expect(pf.valido()).to eq "Digitó numero negativo"
	end

	it "la diferencia con el numero a adivinar es mayor 100" do 
		pf = RejoQuemado.new 123
		expect(pf.valido(11)).to eq "frio"
	end


	it "la diferencia con el numero a adivinar esta entre 10 y 99" do 
		pf = RejoQuemado.new 123
		expect(pf.valido(88)).to eq "tibio"
	end

	it "la diferencia con el numero a adivinar esta entre 1 y 9" do 
		pf = RejoQuemado.new 123
		expect(pf.valido(120)).to eq "caliente"
	end

	it "el numero 500 me debe dar frio" do 
		pf = RejoQuemado.new 123
		expect(pf.valido(500)).to eq "frio"
	end


	it "el numero 150 me debe dar tibio" do 
		pf = RejoQuemado.new 123
		expect(pf.valido(150)).to eq "tibio"
	end

	it "el numero 121 me debe dar caliente" do 
		pf = RejoQuemado.new 123
		expect(pf.valido(121)).to eq "caliente"
	end

	it "el numero 123 me debe decir has ganado" do 
		pf = RejoQuemado.new 123
		expect(pf.valido(123)).to eq "has ganado"
	end
end
