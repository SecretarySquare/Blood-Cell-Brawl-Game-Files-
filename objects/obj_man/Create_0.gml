window_set_size(160 * 3, 120 * 3);
surface_resize(application_surface, 160 * 3, 120 * 3);
audio_stop_all()
audio_play_sound(sng_men, 0, true)
global.level = 1
anim = 0
anim_going = false
num_fad = 0.001