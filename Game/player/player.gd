extends CharacterBody2D



@export var speed : float


var is_moving : bool = false
var health : int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if(Input.is_action_pressed("right_click")): # The player can rotate the character only when the right mouse button os pressed, so that when the player interacts with ant object, the player won't turn, making it less annoying 
		look_at(get_global_mouse_position())
		if(Input.is_action_pressed("move")): # the player can move with the w key or up arrow key only when the rmb is pressed
			velocity = Vector2(speed, 0).rotated(rotation)
		else:
			velocity = Vector2.ZERO    # make it so that the player does not move
	else:
			velocity = Vector2.ZERO

	move_and_slide()
