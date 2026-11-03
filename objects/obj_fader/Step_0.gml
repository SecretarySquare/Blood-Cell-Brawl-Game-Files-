if room = rm_rm1 && global.trans = false && image_alpha > 0 {
	image_alpha -= .05
}
if room = rm_rm1 && global.trans = true {
	image_alpha += .05
}
if room = rm_rm1 && global.trans = true && image_alpha = 1 {
	room_goto(rm_tran)
}
if global.fader_outer = true && room = rm_tran  {
	image_alpha += .05
}
if image_alpha = 2 && room = rm_tran && global.level = 1 {
	room_goto(rm_rm1)
}

if image_alpha = 2 && room = rm_tran && global.level = 2 {
	room_goto(rm_rm2)
}
if room = rm_rm2 && global.trans = false && image_alpha > 0 {
	image_alpha -= .05
}
if global.deadanim = true && room = rm_go {
	image_alpha += .005
	if dead_playing = false {
		audio_stop_all()
		audio_play_sound(snd_build, 0, false)
		dead_playing = true
	}
}
if image_alpha >= 2 && room = rm_go {
	room_goto(rm_men)
}
if room = rm_rm2 && global.fader_outer = true {
	image_alpha += .05
}
if room = rm_rm2 && global.fader_outer = true && image_alpha >= 1.5 {
	room_goto(rm_tran)
}
if global.final_fad = true {
	image_alpha += 0.05
}
if global.final_fad = true && image_alpha = 3 && room = rm_tran {
	room_goto(rm_rm3)
}
if room = rm_rm3 && global.trans_3 = false && image_alpha > 0 {
	image_alpha -= .05
}
if room = rm_rm3 && global.trans_3 = true {
	image_alpha += .05
}
if room = rm_rm3 && global.trans_3 = true {
	room_goto(rm_tran)
}
