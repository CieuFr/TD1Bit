extends PathFollow2D

@export var speed = 1
@export var damage = 2

var pathFollow

# Called when the node enters the scene tree for the first time.
func _ready():
	pathFollow = self.get_path()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.progress_ratio += delta * speed 
	if self.progress_ratio >= 1 : 
		Events.emit_signal("finishedPath",damage)
		queue_free()
	pass
