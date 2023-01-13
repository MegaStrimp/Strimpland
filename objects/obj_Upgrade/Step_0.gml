/// @description Insert description here
// You can write your code in this editor

switch (ability)
{
	case "AUTO":
	sprite_index = spr_Upgrade_Auto;
	break;
	
	case "SPREAD":
	sprite_index = spr_Upgrade_Spread;
	break;
	
	case "STONE":
	sprite_index = spr_Upgrade_Stone;
	break;
}

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
