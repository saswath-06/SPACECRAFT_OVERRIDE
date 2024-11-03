if (keyboard_check_pressed(vk_space)) {
	if room == firstChallengeRoom {
		if place_meeting(x,y,oPlayer) {
			var instantiated = instance_create_depth(0,0,-9998,oTextbox);
			instantiated.text = text;
		}
	}
	var instantiated = instance_create_depth(0,0,-9998, oTextbox);
	instantiated.text = text;
}

if keyboard_check_pressed(vk_enter) {
	instance_destroy();
	if room == cutscene or room == cutscene2 or room == title or room == cutsceneFinal or room == finale or room == cliffhanger { 
		var instantiated = instance_create_depth(0,0,-9998, oTransition);
		instantiated.target_x = target_x;
		instantiated.target_y = target_y;
		instantiated.target_rm = target_rm;
	}
	if room == firstChallengeRoom {
		global.start = 1;
	}
}