if global.repetitions <6 and x>0 {
	x-=2;
}

if x<=0 {
	x = 523;
	global.repetitions += 1;
}

if (global.repetitions >=6) 
{
	x = 10000;
}