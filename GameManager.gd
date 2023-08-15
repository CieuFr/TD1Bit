extends Node2D


var coinsLabel
var healthLabel

var coins = 40
var health = 50 
# Called when the node enters the scene tree for the first time.
func _ready():
	coinsLabel = $CanvasLayer/UI/Stats/Coins/Label
	healthLabel = $CanvasLayer/UI/Stats/Lives/Label
	updateUi()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func updateUi() :
	coinsLabel.text = str(coins)
	healthLabel.text = str(health)
	
