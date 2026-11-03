var txt = "PLAY";
var tx = 194;
var ty = 156;
var scale_x = 1;
var scale_y = 1;
var gm_hex_white = $FBFBFB;
var gm_hex_grey = $DAD4D8;

var mx = device_mouse_x_to_gui(0); 
var my = device_mouse_y_to_gui(0);

var text_w = string_width(txt) * scale_x;
var text_h = string_height(txt) * scale_y;

var is_hovering = (mx >= tx && mx <= tx + text_w && my >= ty && my <= ty + text_h);

if (is_hovering) {
    draw_set_color(gm_hex_grey);
} else {
    draw_set_color(gm_hex_white);
}
//room_goto(rm_rm1);

draw_set_font(fnt_face);
draw_text_transformed(tx, ty, txt, scale_x, scale_y, 0);
draw_set_color(c_white);

if (is_hovering && mouse_check_button_pressed(mb_left)) {
	anim_going = true
}
if (anim_going) {
    obj_fader.image_alpha += num_fad;
	num_fad += .001
	obj_menwbc.y += .01
    if (obj_fader.image_alpha >= 5) {
		room_goto(rm_tran);
    }
}