extends Node2D

@export var enemyScene : PackedScene
@export var towerList : Array[PackedScene]

var path
var towerUi



var isBuilding = false 

# Called when the node enters the scene tree for the first time.
func _ready():
	for tower in towerList : 
		towerUi = $CanvasLayer/UI/Tower/TowerList
		var towerInstance = VBoxContainer
		var towerButton = Button
		
	
	
	
	path = $Path2D
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_enemy_spawn_timer_timeout():
	var enemy = enemyScene.instantiate()
	path.add_child(enemy)
	pass # Replace with function body.
