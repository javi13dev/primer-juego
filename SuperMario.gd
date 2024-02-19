extends CharacterBody2D

var speed = 200
@onready var sprite = $Sprite2D
# esta va a ser mi vector, Para mi plataforma deberia ser un vector2 
var direccion = 0.0

func _process(_delta):
	motion_ctrl()
	print(position.x)
	print(position.y)
	
func motion_ctrl() -> void:
	velocity.x = GLOBAL.get_axis().x * speed
	velocity.y = GLOBAL.get_axis().y * -speed
	
	if velocity.x != 0:
		$AnimatedSprite2D.play("Run")
		#$AnimatedSprite2D.animation = "Run"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x < 0
		#anim.play("Runn")
	else:
		$AnimatedSprite2D.play("Idle")

		
	sprite.flip_h = velocity.x < 0
	# if velocity.x != 0:
	#	 print(velocity.x)
		
		# anim.flip_h = false
		
		# $AnimatedSprite2D.animation = "Run"
		# $AnimatedSprite2D.flip_v = false
		# $AnimatedSprite2D.flip_h = velocity.x < 0
		
	move_and_slide()
	
