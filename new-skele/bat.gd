extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	animation_player.play("idle")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("attack"):
		play_attack()
	if Input.is_action_just_pressed("continue"):
			play_idle()

func play_attack():
		animation_player.play("swoop_attack")

func play_idle():
		animation_player.play("idle")
