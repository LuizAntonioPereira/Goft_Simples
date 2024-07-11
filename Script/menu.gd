extends HBoxContainer

const SAVE_DIR = "user://idioma/"
var data = ""
var save_path = SAVE_DIR + "idioma.dat"

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = FileAccess
	if file.file_exists(save_path):		
		var error = FileAccess.open_encrypted_with_pass(save_path, FileAccess.READ, "P@paB3ar7169")
		var player_data = error.get_var()
		error.close()
		TranslationServer.set_locale(player_data)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func language_pressed():
	get_tree().change_scene_to_file("res://Scene/language.tscn")


func start_pressed():
	get_tree().change_scene_to_file("res://Scene/mananger.tscn")
