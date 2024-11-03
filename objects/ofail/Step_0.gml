if global.health >= 5 {
	
	audio_stop_sound(Sound5);
	x = 0;
	if (keyboard_check_pressed(vk_space)) {
		room_goto(firstChallengeRoom);
	}

	else if (keyboard_check_pressed(vk_shift)) {
		game_end();
	}
}

else {
	x = 10000;
}