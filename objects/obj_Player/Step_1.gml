/// @description Insert description here
// You can write your code in this editor
#region Animation
switch (global.ability[player])
{
	case "NORMAL":
	sprite_index = spr_Char_Normal;
	break;
		
	case "AUTO":
	sprite_index = spr_Char_Auto;
	break;
		
	case "SPREAD":
	sprite_index = spr_Char_Spread;
	break;
		
	case "STONE":
	sprite_index = spr_Char_Stone;
	break;
}
#endregion
