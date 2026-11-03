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

var _bullet = instance_place(x, y, obj_bullet);

// If a bullet was actually found
if (_bullet != noone) {
    global.cells_left -= 1;
    
    // Destroy the bullet instance we just found
    instance_destroy(_bullet);
    instance_destroy(); 
}