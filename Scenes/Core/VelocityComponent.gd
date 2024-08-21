class_name VelocityComponent extends Node2D

@export var characterBody: CharacterBody2D

var characterBodyMoveAndSlideFunc:Callable
var characterBodyMoveAndCollideFunc:Callable

var VELOCITY:Vector2
var VELOCITY_OVERRIDE:Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	characterBodyMoveAndSlideFunc = characterBody.move_and_slide
	characterBodyMoveAndCollideFunc = characterBody.move_and_collide
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func Move(characterBody: CharacterBody2D) -> void:
	characterBody.velocity = VELOCITY_OVERRIDE if VELOCITY_OVERRIDE != null else VELOCITY
	characterBodyMoveAndSlideFunc.call()
	pass
