///@description Draw

#region Go To Target Room
if (alpha == 1)
{
	global.roomPrevious = room;
    room_goto(targetRoom);
    fade = -1;
}
#endregion

#region Set Alpha
if (((pausable) and (!global.pause)) or (!pausable)) alpha = clamp(alpha + (fade * alphaSpd),0,1);

if (alpha >= 0) alphaRound = 2;
if (alpha >= .33) alphaRound = 3;
if (alpha >= .66) alphaRound = 4;

global.paletteIndex = alphaRound;
#endregion

#region Destroy
if ((alpha == 0) and (fade == -1))
{
	global.paletteIndex = 1;
    instance_destroy();
}
#endregion