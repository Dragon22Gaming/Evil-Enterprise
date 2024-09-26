extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.position_smoothing_speed = 1000000000000000
	self.transform = %MrTriangle.transform
	self.position_smoothing_speed = 5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.transform = %MrTriangle.transform
