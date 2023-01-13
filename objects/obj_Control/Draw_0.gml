/// @description Insert description here
// You can write your code in this editor
if (room == rm_Game)
{
	draw_text(19,4,string(global.ability[0]));
	if (global.maxPlayers == 2) draw_text(19,13,string(global.ability[1]));
	
	var pointsSep = "";
	if (global.wave < 10) pointsSep = "0";
	global.wave = clamp(global.wave,0,99);
	draw_text(73,8,pointsSep + string(global.wave));
	
	if (waveState == 1)
	{
		var tutorialText = "";
		
		switch (global.wave)
		{
			case 0:
			tutorialText = @"
			
Z TO JUMP

X TO ATTACK";
			break;
			
			case 1:
			tutorialText = @"
			
COLLECT THE

UPGRADES";
			break;
			
			case 2:
			tutorialText = @"
			
YOU LOSE THEM

WHEN YOU DIE";
			break;
			
			case 3:
			tutorialText = @"
			
P2 USES WASD,

J AND K";
			break;
		}
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(80,72,"WAVE " + pointsSep + string(global.wave) + tutorialText);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
	
	pointsSep = "";
	if (global.score < 100000) pointsSep = "0";
	if (global.score < 10000) pointsSep = "00";
	if (global.score < 1000) pointsSep = "000";
	if (global.score < 100) pointsSep = "0000";
	if (global.score < 10) pointsSep = "00000";
	global.score = clamp(global.score,0,999999);
	
	draw_text(110,4,pointsSep + string(global.score));
	
	draw_set_color(make_color_rgb(103,103,103));
	pointsSep = "";
	if (global.highscore < 100000) pointsSep = "0";
	if (global.highscore < 10000) pointsSep = "00";
	if (global.highscore < 1000) pointsSep = "000";
	if (global.highscore < 100) pointsSep = "0000";
	if (global.highscore < 10) pointsSep = "00000";
	global.highscore = clamp(global.highscore,0,999999);
	draw_text(110,13,pointsSep + string(global.highscore));
	draw_set_color(c_white);
}
