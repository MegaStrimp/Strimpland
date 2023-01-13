/// @description Insert description here
// You can write your code in this editor

#region Fade Timer
if (fadeTimer > 0)
{
	fadeTimer -= 1;
}
else if (fadeTimer == 0)
{
	scr_Transition_GoToRoom(rm_Game);
	fadeTimer = -1;
}
#endregion

