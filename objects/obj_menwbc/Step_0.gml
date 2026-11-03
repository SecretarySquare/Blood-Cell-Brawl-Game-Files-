var y_sway_speed = 0.05; // Higher = faster swaying
var x_sway_speed = 0.002;
var y_sway_amount = 4;
var x_sway_amount = 4;
timer += y_sway_speed;
y = start_y + sin(timer) * y_sway_amount;
timer += x_sway_speed;
x = start_x + sin(timer) * x_sway_amount;