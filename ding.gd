extends Sprite

export var types = ['r', 'b', 'g2', 'a2']

func _ready():
	$r.visible = types.has('r')
	$g.visible = types.has('g')
	$b.visible = types.has('b')
	$a.visible = types.has('a')
	$r2.visible = types.has('r2')
	$g2.visible = types.has('g2')
	$b2.visible = types.has('b2')
	$a2.visible = types.has('a2')


func _physics_process(delta):
	position.x += 200 * delta
	
	#position.x = fmod(position.x, 1920)

func remove_part(p:String):
	if get_node(p+'2').visible:
		get_node(p+'2').visible = false
		return
	if get_node(p).visible:
		get_node(p).visible = false
		return

func _on_Area2D_body_entered(body):
	var rem_t = ''
	for t in types:
		var t_orig = t
		if t.ends_with('2'):
			t = t.substr(0, 1)
		if body.get_parent().get_parent().types.has(t):
			body.get_parent().get_parent().play_sound(t)
			rem_t = t
			remove_part(t)
			break
	if rem_t != '':
		types.erase(rem_t)
	
	
