/// @description Insert description here
// You can write your code in this editor

if (!global.pause)
{
	switch (ability)
	{
		case "NORMAL":
		if (hp == -1) hp = 5;
		points = 100;
		sprite_index = spr_Enemy_Normal;
		break;
		
		case "AUTO":
		if (hp == -1) hp = 10;
		points = 150;
		sprite_index = spr_Enemy_Auto;
		
		if (autoTimer == 0)
		{
			var bullet = instance_create_depth(x,y,depth,obj_Bullet);
			bullet.enemy = true;
			bullet.image_index = 1;
			bullet.speed = 2;
			if (image_xscale == 1)
			{
				bullet.direction = 0;
			}
			else if (image_xscale == -1)
			{
				bullet.direction = 180;
			}
			bullet.direction += irandom_range(-2,2);
			autoTimer = irandom_range(90,120);
		}
		break;
		
		case "SPREAD":
		if (hp == -1) hp = 15;
		points = 250;
		sprite_index = spr_Enemy_Spread;
		break;
		
		case "STONE":
		if (hp == -1) hp = 20;
		points = 500;
		sprite_index = spr_Enemy_Stone;
		break;
	}
	
	if (autoTimer > 0) autoTimer -= 1;
	
	if (place_meeting(x,y,obj_Bullet))
	{
		var bullet = instance_place(x,y,obj_Bullet);
		if (!bullet.enemy)
		{
			hp -= bullet.dmg;
			if (hp <= 0) death = true;
			instance_destroy(bullet);
		}
	}
	
	#region Death
	if (death)
	{
		var rng = irandom_range(0,3);
		var rng = 0;
		if ((ability != "NORMAL") and (rng == 0))
		{
			var upgrade = instance_create_depth(x,y,depth,obj_Upgrade);
			upgrade.ability = ability;
		}
		var deathObj = instance_create_depth(x,y,depth,obj_Death);
		deathObj.points = points;
		global.score += points;
		instance_destroy();
	}
	#endregion
	
	if (place_meeting(x,y,obj_Player))
	{
		var player = instance_place(x,y,obj_Player);
		if (!player.invincible) player.death = true;
	}
}
