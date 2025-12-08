if size < 100 {
	if aura > 0 {
		image_xscale+=0.2
		image_yscale+=0.2
		size+=1
		alarm[0] = 1
	}
} else {
	image_xscale = 1
	image_yscale = 1
	global.aura -=1
	size = 0
}