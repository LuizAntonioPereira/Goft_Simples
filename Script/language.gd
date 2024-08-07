extends HBoxContainer

var data = ""
var save_path = SAVE_DIR + "idioma.dat"
const SAVE_DIR = "user://idioma/"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func pt_pressed():
	data = "pt_BR"
	TranslationServer.set_locale(data)	
	save(data)
	get_tree().change_scene_to_file("res://Scene/menu.tscn")

func en_pressed():
	data = "en_US"
	TranslationServer.set_locale(data)
	save(data)
	get_tree().change_scene_to_file("res://Scene/menu.tscn")

func es_pressed():
	data = "es_ES"
	TranslationServer.set_locale(data)
	save(data)
	get_tree().change_scene_to_file("res://Scene/menu.tscn")
	
func save(d):
	
	var dir = DirAccess
	var file = FileAccess
	
	if !file.file_exists(SAVE_DIR):
		dir.make_dir_recursive_absolute(SAVE_DIR)
	
	var error = file.open_encrypted_with_pass(save_path, FileAccess.WRITE, "P@paB3ar7169")
	error.store_var(d)
	error.close()

