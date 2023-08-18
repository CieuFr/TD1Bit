extends Node2D


var coinsLabel
var healthLabel

var coins = 40
var health = 50 
# Called when the node enters the scene tree for the first time.
func _ready():
	Events.connect("finishedPath",Callable(_takeDamage))
	coinsLabel = $CanvasLayer/UI/Stats/Coins/Label
	healthLabel = $CanvasLayer/UI/Stats/Lives/Label
	_updateUi()
	pass # Replace with function body.


func _takeDamage(damage: int) :
	if health > 0 : 
		health -= damage
		if health < 0 : 
			health = 0
		_updateUi()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _updateUi() :
	coinsLabel.text = str(coins)
	healthLabel.text = str(health)
	



func _on_buy_pressed():
	
	pass # Replace with function body.


func _on_button_pressed():
	pass # Replace with function body.
