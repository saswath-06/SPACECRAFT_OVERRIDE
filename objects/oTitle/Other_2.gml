if file_exists("Save.sav") {
	ini_open("Save.sav");
	startRoom = ini_read_real("Save1", "room", cutscene);
	startX = ini_read_real("Save1", "x", 0);
	startY = ini_read_real("Save1", "y", 0);
	ini_close();
}