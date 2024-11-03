
if (global.repetitions >=1850) {
	x = 34;
	if place_meeting(x, y, oHeart) {
		var instantiated = instance_create_depth(0,0, -9999, oSpecialTransition);
		instantiated.target_x = target_x;
		instantiated.target_y = target_y;
		instantiated.target_rm = target_rm;
	}
}
else {
	x = 10000;
}