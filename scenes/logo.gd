extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var i: int = 0
	var j: int = 0

	while true:
		i +=50
		await get_tree().create_timer(1).timeout

		j +=50
		print(i)
		print(j)
		position = Vector2(i,j)
		if i > 5000:
			break


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	print("process")
