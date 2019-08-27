extends KinematicBody2D

const cima = Vector2(0, -1)
var mover = Vector2()

var camera = Camera2D

export var velocidadeX = 200
export var forcaDoPulo = -600
export var gravidade = 2000

func _ready():
	pass
	
func _process(delta):
	mover.y += gravidade * delta
	$AnimatedSprite.playing = true
	
	if Input.is_action_pressed("ui_left"):
		mover.x = -velocidadeX
		$AnimatedSprite.animation = "andando"
		$AnimatedSprite.flip_h = true
	
	elif Input.is_action_pressed("ui_right"):
		mover.x = velocidadeX
		$AnimatedSprite.animation = "andando"
		$AnimatedSprite.flip_h = false
	
	else:
		$AnimatedSprite.animation = "parado"
		mover.x = 0
		
	if is_on_floor():
		mover.y = 0
		if Input.is_action_pressed("ui_up"):
			mover.y = forcaDoPulo
			
			
	move_and_slide(mover, cima)