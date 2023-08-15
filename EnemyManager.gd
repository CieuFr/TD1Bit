extends PathFollow2D

@export var speed = 1

var pathFollow

# Called when the node enters the scene tree for the first time.
func _ready():
	pathFollow = self.get_path()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.progress_ratio += delta * speed * 0.03
	
	
	pass
