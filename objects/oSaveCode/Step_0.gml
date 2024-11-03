if place_meeting(x,y,oPlayer) {
	if file_exists("Save.sav") {
		file_delete("Save.sav");
	}
	ini_open("Save.sav");
	var savedRoom = room;
	ini_write_real("Save1", "room", savedRoom);
	ini_write_real("Save1", "x", oPlayer.x);
	ini_write_real("Save1", "y", oPlayer.y);
}