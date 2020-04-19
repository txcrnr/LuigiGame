extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var timeElapsed = 0
var animState = 1
var animPlayer = null# Get Luigi's animation player

# Called when the node enters the scene tree for the first time.
func _ready():
	animPlayer = get_node("AnimationPlayer") # Get Luigi's animation player
	animPlayer.current_animation = "HammerLift"
	print(animPlayer.current_animation)
	print("This script ran")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timeElapsed += delta
	if timeElapsed >= 0.25:
		if animState == 1:
			animState = 2
			animPlayer.current_animation = "HammerWait"
			timeElapsed = 0
	if timeElapsed >= 1.5:
		if animState == 2:
			animState = 3
			animPlayer.current_animation = "HammerSwing"
			timeElapsed = 0
	if timeElapsed >= 0.5:
		if animState == 3:
			animState = 1
			animPlayer.current_animation = "HammerLift"
			timeElapsed = 0
	pass
