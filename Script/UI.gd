extends Control

var current_language = TranslationServer.get_locale()

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.reset == true:
		if current_language == "pt_BR":
			$Label.text = "Vitoria !!!"
			self.visible = true
			$Timer.start()
			
		if current_language == "en_US":
			$Label.text = "Victory !!!"
			self.visible = true
			$Timer.start()
			
		if current_language == "es_ES":
			$Label.text = "Vitoria !!!"
			self.visible = true
			$Timer.start()

func _on_timer_timeout():
	self.visible = false
	pass # Replace with function body.
