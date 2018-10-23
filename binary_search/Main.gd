extends Control

# Get node
onready var highest_number_textbox = get_node("Label2/TextEdit")

func _ready():
	get_node("Polygon2D/Label/Buttonguessmain").set_text("You guess the Program's number")
	get_node("Polygon2D/Label/Buttonpcfiguremain").set_text("Program guesses your number")
	
	#global.user_input_highest
func _on_Buttonpcfiguremain_pressed():
		get_tree().change_scene("res://pc_guess_main.tscn")
		# Called when the node is added to the scene for the first time.
	# Initialization here
		pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Buttonguessmain_pressed():
	get_tree().change_scene("res://player_guess_main.tscn")
	pass # replace with function body


func _on_TextEdit_text_changed():
	global.user_input_highest = int(highest_number_textbox.get_text())
	if global.user_input_highest >= 1:
		global.randomnumber = int(rand_range(1,global.user_input_highest))
	pass # replace with function body
