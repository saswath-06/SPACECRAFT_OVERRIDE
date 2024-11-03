if global.repetitions > 550 {
	x = 57;
}

else {
	x = 10000;
}

if place_meeting(x, y, oHeart) {
	global.hasSword = 1;
}

if (global.hasSword ==1) {
	x = 10000;
}