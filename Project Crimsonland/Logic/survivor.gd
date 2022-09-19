extends CharacterBody2D

var SPEED: int = 250

# Get the gravity from the project settings to be synced with RigidBody nodes.
# var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")
func get_input() -> void: 
	velocity = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		
	velocity = velocity.normalized() * SPEED
	

func _physics_process(delta: float) -> void:
	get_input()
	
	move_and_slide()
