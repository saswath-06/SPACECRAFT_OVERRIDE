/// @description Insert description here
// You can write your code in this editor
if (global.hasSword = 1) {
	x = 57;
	
	global.repetitions += 1.5;
	
	if (instance_exists(evilAlien2)) {
	// Get the target's position
		var target_x = evilAlien2.x;
		var target_y = evilAlien2.y;

		// Calculate the direction towards the target
		var dir = point_direction(x, y, target_x, target_y);

    // Move the object in that direction
		x += lengthdir_x(speed, direction);
		y += lengthdir_y(speed, direction);
	}
}

else {
	x=10000;
}
