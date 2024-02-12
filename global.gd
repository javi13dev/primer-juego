extends Node

var score : int

# Movimiento del jugador
var axis : Vector2


# función para retornar la dirección pulsada:
func get_axis() -> Vector2:
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	axis.y = int(Input.is_action_pressed("ui_up")) - int(Input.is_action_pressed("ui_down"))
	return axis.normalized()
	# normalized permite que se muevan con la misma velocidad en cualquier dirección
