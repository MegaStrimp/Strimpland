///@description Step

if (!global.pause)
{
	#region Movement
	hsp = (global.keyRightHeld[player] - global.keyLeftHeld[player]) * movespeed;
	if (hsp != 0) image_xscale = sign(hsp);
	#endregion
	
	#region Gravity
	vsp += grav;
	#endregion
	
	#region Jump
	if ((place_meeting(x,y + 1,obj_Wall)) and (global.keyAPressed[player]))
	{
		if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
		audio_play_sound(snd_Jump,0,false);
	    vsp -= jumpspeed; 
	}
	#endregion
	
	#region Death
	if (place_meeting(x,y,obj_Bullet))
	{
		var bullet = instance_place(x,y,obj_Bullet);
		if (bullet.enemy)
		{
			death = true;
			instance_destroy(bullet);
		}
	}
	
	if (death)
	{
		global.ability[player] = "NORMAL";
		instance_create_depth(x,y,depth,obj_Death);
		instance_destroy();
	}
	#endregion
	
	#region Attack
	switch (global.ability[player])
	{
		case "NORMAL":
		if ((autoTimer == 0) and (global.keyBPressed[player]))
		{
			var bullet = instance_create_depth(x,y,depth,obj_Bullet);
			bullet.dmg = 2;
			bullet.enemy = false;
			bullet.speed = 2;
			if (image_xscale == 1)
			{
				bullet.direction = 0;
			}
			else if (image_xscale == -1)
			{
				bullet.direction = 180;
			}
			autoTimer = 30;
		}
		break;
		
		case "AUTO":
		if ((autoTimer == 0) and (global.keyBHeld[player]))
		{
			var bullet = instance_create_depth(x,y,depth,obj_Bullet);
			bullet.dmg = 1;
			bullet.enemy = false;
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
			autoTimer = 10;
		}
		break;
	}
	
	if (autoTimer > 0) autoTimer -= 1;
	#endregion
	
	#region Upgrade
	if (place_meeting(x,y,obj_Upgrade))
	{
		var up = instance_place(x,y,obj_Upgrade);
		global.ability[player] = up.ability;
		instance_destroy(up);
	}
	#endregion
	
	#region Horizontal Collision
	var onepixel = sign(hsp);
	
	if (place_meeting(x + hsp,y,obj_Wall))
	{
	    while (!place_meeting(x + onepixel,y,obj_Wall))
	    {
	        x += onepixel;
	    }
	    hsp = 0;
	}
	
	x += hsp;
	#endregion
	
	#region Vertical Collision
	var onepixel = sign(vsp)
	
	if (place_meeting(x,y + vsp,obj_Wall))
	{
	    while (!place_meeting(x,y + onepixel,obj_Wall))
	    {
	        y += onepixel;
	    }
	    vsp = 0;
	}
	
	y += vsp;
	#endregion
}
