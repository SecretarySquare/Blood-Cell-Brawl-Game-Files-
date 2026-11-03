var side = irandom(3);
var spawn_x = 0;
var spawn_y = 0;

switch (side) {
    case 0: spawn_x = random(160); spawn_y = 0; break;
    case 1: spawn_x = 160; spawn_y = random(120); break;
    case 2: spawn_x = random(160); spawn_y = 120; break;
    case 3: spawn_x = 0; spawn_y = random(120); break;
}

var new_obj = instance_create_layer(spawn_x, spawn_y, "Instances", obj_rbc);

with (new_obj) {
    direction = point_direction(x, y, 80, 60) + random_range(-30, 30);
    speed = .5;
}

// 2. Reset the alarm so it triggers again!
alarm[1] = spawn_rate_rbc;