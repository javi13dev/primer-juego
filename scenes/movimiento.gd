extends CharacterBody2D
'''
Mov del icono, agregado a escena
'''
@export var speed : float

func _process(_delta):
	motion_ctrl()
	
func motion_ctrl() -> void:
	velocity.x = GLOBAL.get_axis().x * speed
	velocity.y = GLOBAL.get_axis().y * -speed
	move_and_slide()
	
