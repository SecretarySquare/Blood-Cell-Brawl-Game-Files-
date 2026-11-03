var sentzies1 = string(global.cells_left) + " cell" + paul + " left"
draw_set_font(fnt_face)
draw_set_color(gm_hex_white);
if global.dead = false {
	draw_text_transformed(256, 3, sentzies1, 1, 1, 0)
	draw_text_transformed(4, 3, string(global.cytoes) + " / 20", 1, 1, 0)
}
