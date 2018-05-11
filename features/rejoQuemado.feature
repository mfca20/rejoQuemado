Feature:
	Como Jugador de Rejo Quemado
	Deseo una pantalla de Bienvenida
	Para Ingresar al juego Rejo Quemado


Scenario:  El juego debe tener un mensaje de bienvenida
	Given que ingreso al juego
	Then debo ver "Bienvenido al Juego Rejo Quemado"


Scenario:  El juego debe tener un boton para iniciar el juego
	Given que ingreso al juego
	When inicio juego
	Then debo ver "Intentemos Ahora" 

Scenario:  El juego contiene un valor oculto
	Given que ingreso al juego
	And inicio juego
	When ingreso el valor "123"
	And probemos suerte
	Then debo ver "caliente"
 	

