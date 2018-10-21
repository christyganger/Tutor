extends Control

# Get node

func _ready():
	get_node("Polygon2D/Label/Buttonguessmain").set_text("You guess the Program's number")
	get_node("Polygon2D/Label/Buttonpcfiguremain").set_text("Program guesses your number")
	
func _on_Buttonpcfiguremain_pressed():
		get_tree().change_scene("res://../pc_guess_main.tscn")
		# Called when the node is added to the scene for the first time.
	# Initialization here
		pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Buttonguessmain_pressed():
	pass # replace with function body
