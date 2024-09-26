extends Control
func _ready():
	pass

func Play_Button_Pressed():
	
	get_tree().change_scene_to_file("res://Places/TycoonArea.tscn")

func Quit_Button():
	get_tree().quit()

func Setting_Pressed():
	#Open settings menu (Once made)
	get_tree().change_scene_to_file("res://Interfaces/Settings.tscn")

func _on_popup_menu_id_pressed(id):
	if id == 0:
		Play_Button_Pressed()
	if id == 1:
		Quit_Button()
