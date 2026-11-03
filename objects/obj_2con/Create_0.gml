audio_stop_sound(sng_trans)
audio_play_sound(sng_ar2, 0, true)

global.cell_see = 50
global.cells_left = 50;
global.cytoes = 20;
global.trans = false
global.fader_outer = false
global.dead = false
gm_hex_white = $FBFBFB;

paul = "s"
spawn_rate = irandom_range(60, 80); 
alarm[0] = spawn_rate;

window_set_size(160 * 3, 120 * 3);
surface_resize(application_surface, 160 * 3, 120 * 3);

spawn_rate_rbc = 573; 
alarm[1] = spawn_rate_rbc;