/// @description movement

right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));
left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));

if keyboard_check(vk_shift) {
	move_spd = run_spd;
}
else {
	move_spd = 1;
}

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//collisions:
if place_meeting(x+xspd, y, oWall) {
	xspd = 0;
}

if place_meeting(x, y+yspd, oWall) {
	yspd = 0;
}

//collisions:
if place_meeting(x+xspd, y, oWall2) {
	xspd = 0;
}

if place_meeting(x, y+yspd, oWall2) {
	yspd = 0;
}

if (can_move) {
	//animate:
	if xspd > 0 {
		sprite_index = sPlayerRight;
	}
	else if xspd < 0 {
		sprite_index = sPlayerLeft;
	}
	else if yspd > 0 {
		sprite_index = sPlayerDown;
	}
	else if yspd < 0 {
		sprite_index = sPlayerUp;
	}

	if (xspd !=0 or yspd !=0) {
		image_speed = 1;
	}
	else {
		image_speed = 0;
		image_index = 0;
	}
}
x += xspd;
y += yspd;

