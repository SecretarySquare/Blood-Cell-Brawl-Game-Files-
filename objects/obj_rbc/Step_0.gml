if (x <= 0) {
    x = 0; // Push back inside to prevent getting stuck
    hspeed = abs(hspeed); // Force horizontal speed to be positive (right)
} else if (x >= 160) {
    x = 160;
    hspeed = -abs(hspeed); // Force horizontal speed to be negative (left)
}

// Bounce off top and bottom walls (0 and 120)
if (y <= 0) {
    y = 0; 
    vspeed = abs(vspeed); // Force vertical speed to be positive (down)
} else if (y >= 120) {
    y = 120;
    vspeed = -abs(vspeed); // Force vertical speed to be negative (up)
}

if (place_meeting(x, y, obj_wbc)) {
	if global.cytoes <= 10 {
		global.cytoes += 10
	}
	else {
		global.cytoes = 20
	}
	instance_destroy();
}