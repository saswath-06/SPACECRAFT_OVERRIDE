if global.repetitions <6 and x>0 {
	x-=3;
}

if (x<=0) {
	x = 1000;
	global.repetitions +=1;
}

if global.repetitions>=6 {
	x = 10000;
}