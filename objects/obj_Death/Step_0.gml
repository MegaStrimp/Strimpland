/// @description Insert description here
// You can write your code in this editor

if (!global.pause)
{
	#region Destroy Timer
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
#endregion
}
