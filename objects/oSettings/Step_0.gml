if  keyboard_check_pressed(vk_f4) or (keyboard_check(vk_alt) and keyboard_check(vk_enter)) {
	if window_get_fullscreen() {
		window_set_fullscreen(true);
	}
	else {
		window_set_fullscreen(false);
	}
}