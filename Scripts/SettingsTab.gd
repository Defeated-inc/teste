extends Control


var General_volume
var Music_volume
var VSyncEnabled : bool
var Gamma
var Mouse_sensi


func _on_geral_slider_value_changed(value):
	General_volume = linear_to_db(value/100) + 6
	AudioServer.set_bus_volume_db(0, General_volume)


func _on_music_slider_value_changed(value):
	Music_volume = linear_to_db(value/100) + 6
	print(Music_volume)
	AudioServer.set_bus_volume_db(3, Music_volume)


func _on_vsync_box_toggled(toggled_on):
	if toggled_on:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
		VSyncEnabled = true
	else:
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		VSyncEnabled = false


func _on_sensi_slider_value_changed(value):
	OptionsVariables.camera_sensitivity = (value / 100)


func _on_gamma_slider_value_changed(value):
	OptionsVariables.gamma = (value / 100) * 3
