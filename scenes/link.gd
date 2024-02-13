extends Node2D


# referencia al parámetro playback del nodo AnimationTree
@onready var playback : AnimationNodeStateMachinePlayback = $Sprite2D/AnimationTree.get("parameters/playback")
# así tengo la referencia 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.play("Idle") # Para iniciar una animación con AnimationPlayer
	$Sprite2D.stop() # Para finalizar una animación con animationPlayer
	
	# Pero en AnimationTree, será quien tiene el control en lugar de las propiedades de AnimationPlayer
	# Como parámetro le pasamos el nombre de la animación o estado.
	playback.travel("Run")
	
func _process(delta) -> void:
	state_machine()


# esta función evalúa el estado
func state_machine() -> void:
	match playback.get_current_node():
		"Idle":
			print("El personaje está detenido")
		"Run":
			print("El personaje está corriendo")
			
			
func demo() -> void:
	print("Fin de la animación")
	
func _on_animation_player_animation_started(anim_name):
	match anim_name:
		"Idle":
			pass
		"Run":
			pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
