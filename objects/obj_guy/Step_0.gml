if image_alpha < 1 {
	image_alpha += 0.01
}
else {
	image_alpha = 1
}
if room = rm_tran && global.level = 4 {
	image_index = 2
}