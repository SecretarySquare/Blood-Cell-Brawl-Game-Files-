audio_stop_sound(sng_trans)
audio_play_sound(sng_ar3, 0, true)

global.cell_see = 30
global.cells_left = 30;
global.cytoes = 20;
global.trans_3 = false
global.dead = false
global.final_fad = false
gm_hex_white = $FBFBFB;

paul = "s"
spawn_rate = irandom_range(50, 70); 
alarm[0] = spawn_rate;

window_set_size(160 * 3, 120 * 3);
surface_resize(application_surface, 160 * 3, 120 * 3);

spawn_rate_rbc = 523; 
alarm[1] = spawn_rate_rbc;