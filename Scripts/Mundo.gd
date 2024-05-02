extends Node3D


@onready var messages_app = $"../../MessagesApp"
@onready var mom_chat = $"../../MomChat"
@onready var bob_chat = $"../../BobChat"

# Called when the node enters the scene tree for the first time.
func _ready():
	#Engine.max_fps = 144
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$FPSCounter.set_text("FPS: %d" % Engine.get_frames_per_second())
	if Input.is_action_just_pressed("Mobile"):
		if messages_app.visible:
			messages_app.hide()
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		else:
			if mom_chat.visible or bob_chat.visible:
				mom_chat.hide()
				bob_chat.hide()
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			else:
				messages_app.show()
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()
