extends XRToolsPickable

var spawn_position: Vector3
var spawn_rotation: Quaternion

func _ready():
	spawn_position = global_position
	spawn_rotation = global_transform.basis.get_rotation_quaternion()

func _process(_delta):
	if global_position.y < -2.0:
		reset_ball()

func reset_ball():
	global_position = spawn_position
	global_transform.basis = Basis(spawn_rotation)
	linear_velocity = Vector3.ZERO
	angular_velocity = Vector3.ZERO
