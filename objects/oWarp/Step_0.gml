if place_meeting(x, y, oPlayer) {
	var instantiated = instance_create_depth(0,0, -9999, oTransition);
	instantiated.target_x = target_x;
	instantiated.target_y = target_y;
	instantiated.target_rm = target_rm;
}