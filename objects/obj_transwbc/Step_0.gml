if (global.text_index == 3) && global.level = 1 {
    changing = true;
}
if (global.text_index == 11) && global.level = 1 {
    changing_1 = true;
}
if (changing && image_alpha < 1) {
    image_alpha += 0.01;
}
if (changing_1 && y > 25) { 
    y -= 1; 
} 

if (y == 25) && x > 80  && global.level = 1{ 
    x -= 1; 
}
if (y == 25) && (x == 80)  && global.level = 1 { 
    global.fader_outer = true
}
if global.level = 2 && global.text_index == 6 {
	changing_4 = true
}
if changing_4 = true && y < 60 {
	y += 1
}
if (y == 60) && (x == 80)  && global.level = 2 { 
    global.fader_outer = true
}
if (global.text_index == 6) && global.level = 3 {
	y += 0.01
	global.final_fad = true
}