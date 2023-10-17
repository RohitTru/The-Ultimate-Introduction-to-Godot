extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():

	var center: Vector2 = Vector2(600, 250)  # Set the center of the circle	
	var radius: float = 100.0  # Set the radius of the circle
	var angle: float = 0.0  # Initialize the angle
	while true:
		await get_tree().create_timer(0.1).timeout

		# Calculate the coordinates on the circle's perimeter
		var x = center.x + radius * cos(angle)
		var y = center.y + radius * sin(angle)

		# Update the position
		position = Vector2(x, y)

		# Increment the angle for the next point
		angle += 0.05  # You can adjust the increment to change the speed of rotation

		# Check if the angle has completed a full circle (2*pi radians)
		if angle >= 2 * PI:
			angle = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	print("process")
