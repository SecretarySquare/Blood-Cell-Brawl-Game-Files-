if global.cells_left = 0 {
	global.trans_3 = true
	global.level = 4
	
}

if keyboard_check_pressed(ord("V")) {
	global.cells_left = 0
}

if global.cells_left = 1 {
	paul = ""
}
else {
	paul = "s"
}

if global.cytoes <= 0 {
	global.dead = true
}