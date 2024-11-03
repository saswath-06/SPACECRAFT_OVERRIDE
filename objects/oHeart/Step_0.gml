/// @description movement
took_damage = false;
// Key input checks
right_key = keyboard_check(vk_right) or keyboard_check(ord("D"));
up_key = keyboard_check(vk_up) or keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) or keyboard_check(ord("S"));
left_key = keyboard_check(vk_left) or keyboard_check(ord("A"));

// Calculate speed based on key input
xspd = (right_key - left_key) * 1.5;
yspd = (down_key - up_key) * 1.5;

// Collision checks
if (place_meeting(x + xspd, y, oWall)) {
    xspd = 0; // Stop horizontal movement on collision
}

if (place_meeting(x, y + yspd, oWall)) {
    yspd = 0; // Stop vertical movement on collision
}

// Update position if movement is allowed
if (can_move) {
    // Animation handling
    if (xspd > 0) {
        sprite_index = sPlayerRight;
    } else if (xspd < 0) {
        sprite_index = sPlayerLeft;
    } else if (yspd > 0) {
        sprite_index = sPlayerDown;
    } else if (yspd < 0) {
        sprite_index = sPlayerUp;
    }

    // Manage image speed and index
    if (xspd != 0 || yspd != 0) {
        image_speed = 1;
    } else {
        image_speed = 0;
        image_index = 0; // Reset to idle frame
    }

    // Update position
    x += xspd;
    y += yspd;
}

// Check for damage from attacks
if (place_meeting(x, y, LightningAttack1) || 
    place_meeting(x, y, LightningAttack2) || 
    place_meeting(x, y, LightningAttack3) || 
    place_meeting(x, y, LightningAttack4) || 
    place_meeting(x, y, LightningAttack5) || 
    place_meeting(x, y, FireAttack1) || 
    place_meeting(x, y, FireAttack2) || 
    place_meeting(x, y, FireAttack3)) {
    
	global.health +=1;
}

if global.health == 7 {
	room_goto(failure);
}
