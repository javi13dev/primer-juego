extends CharacterBody2D

'''

Si quisiera crear una clase usariamos:
class_name Personaje

y darle atributos

var speed = 300

func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
	
'''

'''
Ejemplos:
de arrays:
	
var tipo_array : Array = [
	"primero",
	2,
	[
		true,
		3.4
	]
]

de diccionarios:
	
var tipo_diccionario : Dictionary = {
	"Nombre" : "Tontin",
	"Especie" : "Gato",
	"Edad" : 4,
	"Info" : {
		"conviviente" : "Kenke"
	}
 }

'''

'''
Ejemplo de condicionales: cuando queremos que nuestro personaje salte solo si está en el suelo

func _ready() -> void:
	if personaje.is_on_floor():
		personaje.saltar()
		
	Otro ejemplo:
		
	if not personaje.is_on_floor() and estado == "En el aire":
		print("No hace nada")
	elif personaje.is_on_floor() and estado == "En el suelo":
		personaje.saltar()
	else:
		print("grrrr")
		
	El match, en lugar de switch:
		
	match estado:
		"inicio":
			mostrar_manu()
		"juego":
			iniciar_jeugo()
		"fin":
			mostrar_puntuacion()
		_: (es equivalente al else)
			print("No hace nada")
		

'''

'''
Sobre bucles:
	
func _ready() -> void:
	for i in range(1,11):
		print(i)
		
	var frutas = ["manzanas", "peras", "naranjas"]
	for fruta in frutas:
		print("Me gusta comer " + fruta)

	
	var i = 1
	while 1<=10:
		print(i)
		i = i+1
		
		
	var x = 1
	while x <= 10
		print("Dentro del bucle")
		break



'''


'''
Cómo acceder a un nodo y sus propiedades por código:
	
extends Node

func _ready() -> void:
	get_Node("Gato")
	
	o bien:
		
	$Gato
	
	Y con un . se acceden a sus propiedades.
	
'''

'''
Para emitir señales, se usa signal:
	emit_signal y connect
	
extends Area3D

signal hit(value)

var damage : int

func _on_body_entered(body):
	emit_signal("hit", damage)
	
Así se le pasa el damage y podemos conectarlo con la funcion de otro elemento por código.

(otro player)
extends CharacterBody3D

var enemy = get_tree().get_nodes_in_group("Enemy")
var life = 10

func _ready():
	eney.hit.connect(take_damage)
	

func take_damage() -> void:
	life -= 1
	

'''


'''
Función de movimiento:
	


'''


var nombre : String
var vida : int
var velocidad : int

func moverse() -> void:
	position += Vector2(velocidad , velocidad)

func atacar() -> void:
	pass
	
func _ready():
	print("Hola tontin")	
	
