/// @description Insert description here
// You can write your code in this editor

if (global.keyDownPressed[0]) selection += 1;
if (global.keyUpPressed[0]) selection -= 1;

if (selection < 0) selection += 2;
if (selection >= 2) selection -= 2;

if ((global.keyAPressed[0]) or (global.keyStartPressed[0]))
{
	global.maxPlayers = 1 + selection;
	scr_Transition_GoToRoom(rm_Transition);
}

image_angle = 0;
if (selection == 1) image_angle = 270;
