if (global.repetitions <6) {
	y = 1000;
}

if (global.repetitions >=6 and global.repetitions <12) {
	y -=2;
	
	if y <= 0 {
		y = 500;
		global.repetitions +=1;
	}
		
}

if global.repetitions >=12 {
	y = 100000;
}