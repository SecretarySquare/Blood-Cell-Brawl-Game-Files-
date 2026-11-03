var _input_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _input_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if (_input_x != 0 || _input_y != 0) {
    var _dir = point_direction(0, 0, _input_x, _input_y);
    hsp += lengthdir_x(move_speed, _dir);
    vsp += lengthdir_y(move_speed, _dir);
    var _current_speed = point_distance(0, 0, hsp, vsp);
    if (_current_speed > max_speed) {
        hsp = lengthdir_x(max_speed, _dir);
        vsp = lengthdir_y(max_speed, _dir);
    }
}

hsp *= friction_val;
vsp *= friction_val;
if (abs(hsp) < 0.05) hsp = 0;
if (abs(vsp) < 0.05) vsp = 0;

if (place_meeting(x + hsp, y, obj_wall)) {
    while (!place_meeting(x + sign(hsp), y, obj_wall)) {
        x += sign(hsp);
    }
    hsp = -hsp * 0.7; 
}
x += hsp;

if (place_meeting(x, y + vsp, obj_wall)) {
    while (!place_meeting(x, y + sign(vsp), obj_wall)) {
        y += sign(vsp);
    }
    vsp = -vsp * 0.9;
}
y += vsp;

if (mouse_check_button_pressed(mb_left)) && global.cytoes > 0 {
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
        
	bullet.speed = 1;
	bullet.direction = dir;
	bullet.image_angle = dir;
	global.cytoes -= 1;
}


var _flut = instance_place(x, y, obj_fluett);
var _nott = instance_place(x, y, obj_norett);
var _cott = instance_place(x, y, obj_covutt);

if (_flut != noone) && global.dead = false { 
    global.cytoes -= 1;
	instance_create_layer(_flut.x - 10, _flut.y - 10, "Instances_1", obj_exp);
    instance_destroy(_flut);
}

if (_nott != noone) && global.dead = false { 
    global.cytoes -= 1;
	instance_create_layer(_nott.x - 10, _nott.y - 10, "Instances_1", obj_exp);
    instance_destroy(_nott);
}

if (_cott != noone) && global.dead = false { 
    global.cytoes -= 1;
	instance_create_layer(_cott.x - 10, _cott.y - 10, "Instances_1", obj_exp);
    instance_destroy(_cott);
}