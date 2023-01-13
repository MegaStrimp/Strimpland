/// @description Insert description here
// You can write your code in this editor

if (global.score > global.highscore)
{
	ini_open("save.ini");
	ini_write_real("save","highscore",global.score);
	ini_close();
}
