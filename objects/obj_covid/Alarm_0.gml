for (var i = 0; i < 360; i += 45) { 
    var bullet = instance_create_layer(x, y, "Instances", obj_covutt);
    with (bullet) {
        direction = i; 
        speed = .75;
    }
}
alarm[0] = shoot_rate;