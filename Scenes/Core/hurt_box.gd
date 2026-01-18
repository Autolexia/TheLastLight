class_name HurtBox extends Area2D

@export var healthComponent:HealthComponent

@onready var damageRecievedFunc:Callable

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if healthComponent:
		damageRecievedFunc = healthComponent.ApplyHealthChange
	else:
		push_warning("No Health Component Assigned. Hurtbox Does not have a health component to apply damage to")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
