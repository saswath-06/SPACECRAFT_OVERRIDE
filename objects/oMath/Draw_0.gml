if (global.start == 1) {
    // Draw the equation
    draw_sprite(number1, 0, 42, 143);
    draw_sprite(plus, 0, 71, 138);
    draw_sprite(number3, 0, 101, 141);
    draw_sprite(number1, 0, 135, 140);
	draw_sprite(no, 0, 246, 118);

    // Check if the user has typed the correct answer
    if (keyboard_string == global.correctAnswer) {
        global.solution = 1; // Mark solution as correct
        // Clear input
    } 
    else if (string_length(keyboard_string) > 0 && keyboard_string != global.correctAnswer) {
        // Incorrect answer; reset room
        room_goto(firstChallengeRoom);
        keyboard_string = ""; // Clear input after incorrect answer
    }

    // Display correct answer if solution is correct
}

if (global.solution == 1) {
	global.start = 2;
    draw_sprite(number4, 0, 135, 140);
	draw_sprite_ext(gigaqueen, 4, 245, 116, 0.25, 0.25,0, c_white, 0.1);  
    // Reset global.start to avoid re-checking the answer
}

