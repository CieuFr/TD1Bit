extends Node2D

@export var enemyScene : PackedScene
var path

# Called when the node enters the scene tree for the first time.
func _ready():
	path = $Path2D
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_enemy_spawn_timer_timeout():
	var enemy = enemyScene.instantiate()
	path.add_child(enemy)
	pass # Replace with function body.
