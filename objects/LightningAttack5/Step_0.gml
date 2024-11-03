if (global.repetitions <6) {
	y = -400;
}

if (global.repetitions >=6 and global.repetitions <12) {
	y +=6;
	
	if y > 240 {
		y = -900;
		global.repetitions +=1;
	}
}

if (global.repetitions >=12) {
	y = 10000;
}