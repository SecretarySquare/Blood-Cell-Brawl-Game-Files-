if global.dead = true {
	image_alpha += .005
	if flat_playing = false {
		audio_stop_all()
		audio_play_sound(snd_dead, 0, false)
		flat_playing = true
	}
}
if global.dead = true && image_alpha = 2 {
	room_goto(rm_go)
}