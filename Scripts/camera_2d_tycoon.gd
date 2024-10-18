extends Camera2D
# Called when the node enters the scene tree for the first time.
@onready var camera = self
@export var zoom_sensitivity := 5
func _ready():
	camera.position_smoothing_speed = 100
	camera.transform = %MrTriangle.transform
	camera.position_smoothing_speed = 5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	camera.transform = %MrTriangle.transform
	var windowsize = get_window().size
	if Input.is_action_just_pressed("Zoom in"):
		zoom_in(windowsize)
	
	if Input.is_action_just_pressed("Zoom Out"):
		zoom_out(windowsize)

func zoom_in(windowsize):
	if camera.zoom.x < 3.8:
		camera.zoom.x += (0.1 * zoom_sensitivity * (windowsize.x * 0.05))
		camera.zoom.y = camera.zoom.x

func zoom_out(windowsize):
	if camera.zoom.x > 2.5:
		camera.zoom.x -= (0.1 * zoom_sensitivity * (windowsize.x * 0.05))
		camera.zoom.y = camera.zoom.x
