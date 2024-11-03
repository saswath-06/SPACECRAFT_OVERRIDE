if (image_index = 0 and keyboard_check_pressed(vk_space)) {
	image_index = 1;
}
else if (image_index = 1 and keyboard_check_pressed(vk_space)) {
	image_index = 2;
}
else if (image_index = 2 and keyboard_check_pressed(vk_shift)) {
	image_index = 1;
}
else if (image_index = 1 and keyboard_check_pressed(vk_shift)) {
	image_index = 0;
}
else if (image_index = 2 and (keyboard_check_pressed(vk_right)) or keyboard_check_pressed(ord("D"))) {
	image_index = 3;
}
else if (image_index = 3 and (keyboard_check_pressed(vk_left)) or keyboard_check_pressed(ord("A"))) {
	image_index = 2;
}
else if (image_index = 3 and keyboard_check_pressed(vk_shift)) {
	image_index = 1;
}
else if (image_index = 2 and keyboard_check_pressed(vk_space)) {
	room_goto(startRoom);
	var instantiated = instance_create_layer(startX, startY, "Player", oPlayer); 
} 
else if (image_index = 3 and keyboard_check_pressed(vk_space)) {
	file_delete("Save.sav");
	room_goto(cutscene);
}