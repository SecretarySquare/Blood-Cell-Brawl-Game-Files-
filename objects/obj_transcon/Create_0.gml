audio_stop_sound(sng_men)
audio_stop_sound(sng_ar1)
audio_stop_sound(sng_ar2)
audio_stop_sound(sng_ar3)
audio_play_sound(sng_trans, 0, true)
global.trans_3 = false
if global.level = 1 {
	text_array = [
	    "(click the mouse please)",
	    "This is Oliver...",
	    "You will be protecting him.",
		"You are a white blood cell...",
		"Red blood cells will help!",
		"Move with WASD",
		"Shoot by clicking.",
		"Don't run out of bullets...",
		"or You'll DIE!",
		"Oh no!",
		"He's caught the flu!"
	];
}

if global.level = 2 {
	text_array = [
	    "Welcome back",
	    "You defeated the flu!",
	    "Wasn't that easy?",
		"Wait whats that?",
		"Is that norovirus!",
		"That's the poop one!",
		"Go get em!"
	];
}
if global.level = 3 {
	text_array = [
	    "Good job!",
	    "You defeated Norovirus!",
	    "Oliver is very thankful!",
		"Wait...",
		"It can't be...",
		"COVID!",
		"DO IT FOR OLIVER!"
	];
}
if global.level = 4 {
	text_array = [
	    "Wow!",
	    "You defeated Covid!",
	    "Oliver is very happy!",
		"White blood cells are real!",
		"They're working in you body!",
		"Think how much they do.",
		"Those little guys.",
		"Well, thanks for playing!"
	];
}

global.text_index = 0;
global.fader_outer = false
text_full = text_array[global.text_index];
text_current = "";
char_index = 0; 
char_speed = 0.5; 
is_finished = false;
hex_black = $2D272F