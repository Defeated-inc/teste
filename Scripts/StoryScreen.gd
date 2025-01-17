extends Node2D

@onready var animation_player = $Control/AnimationPlayer
@onready var label = $Control/Label
@onready var label_2 = $Control/Label2
@onready var label_3 = $Control/Label3
@onready var timer = $Control/Timer
@onready var label_6 = $Control/Label6
@onready var soundtrack_node = $"../Soundtrack"
@onready var soundtrack = $"../Soundtrack/Soundtrack"

@onready var bus_sound = $BusSound
@onready var ambience_sound = $AmbienceSound


var anim_next = 0
var flag = 1
var timer_flag = 1
var canReceiveInput = true

signal animation_finished

func _ready():
	animation_player.play("fade_in_first")
	animation_player.animation_finished.connect(_on_animation_finished)
	bus_sound.play()
	ambience_sound.play()
	fadeInAudio(bus_sound, -10)
	fadeInAudio(ambience_sound, -10)

func _on_animation_finished(anim_name):
	if anim_name == "fade_out_first":
		anim_next += 1
		if anim_next == 1:
			_change_labels()
			animation_player.play("fade_in_third")
		elif anim_next == 2:
			fadeOutAudio(bus_sound)
			animation_player.play("fade_in_sec")
	elif anim_name == "fade_out_sec":
		animation_player.play("fade_out_screen")
	elif anim_name == "fade_out_screen":
		animation_player.play("first_day")
		fadeOutAudio(ambience_sound)
		canReceiveInput = false
	elif anim_name == "first_day":
		visible = false
		fadeInAudio(soundtrack, 10)
		soundtrack.play()
		animation_finished.emit()
		soundtrack_node.canStart = true
	elif (anim_name == "fade_in_first" || anim_name == "fade_in_sec" || anim_name == "fade_in_third") && timer_flag == 1:
		timer.start()
	
	if anim_name != "fade_out_sec":
		flag = 1

func _change_labels():
	label.text = "Após quase não encontrar viagens de ônibus disponíveis para o lugar e enfrentar uma exaustiva viagem, Jake se depara com algo que não fora lhe dito no momento da compra."
	label_2.text = "A casa se encontrava no meio da floresta, separada da pequena cidade por uma longa camada de árvores, com apenas uma trilha o levando ao local."
	label_3.text = "Trilha essa, que ele teve que percorrer andando pela maior parte, chegando já durante a noite na casa"

func _process(delta):
	if !ambience_sound.playing:
		ambience_sound.play(3)
	if (Input.is_anything_pressed() && flag == 1) and canReceiveInput:
		flag = 0
		timer_flag = 0
		if anim_next == 0 || anim_next == 1:
			animation_player.play("fade_out_first")
			timer_flag = 1
		elif anim_next == 2:
			animation_player.play("fade_out_sec")
			timer_flag = 1
			flag = 0

func _on_timer_timeout():
	if anim_next == 0 || anim_next == 1:
		animation_player.play("fade_out_first")
	elif anim_next == 2:
		label_6.text = ""
		animation_player.play("fade_out_screen")
		
func fadeInAudio(audio, db):
	var tween = get_tree().create_tween()
	tween.tween_property(audio, "volume_db", db, 5)
	
func fadeOutAudio(audio):
	var tween = get_tree().create_tween()
	tween.tween_property(audio, "volume_db", -80, 12)
