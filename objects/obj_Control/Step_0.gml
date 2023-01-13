///@description Step

#region Screen Palette
var palIndex = floor(global.score / 2500) % palettes.length;
global.paletteSprite = global.palette[palIndex];
#endregion

#region Wave Control
if (room == rm_Game)
{
	if (((!instance_exists(obj_Player)) or (!instance_exists(obj_Enemy))) and (waveState == 0) and (waveTimer == -1))
	{
		if (instance_exists(obj_Player)) global.wave += 1;
		waveTimer = 0;
	}
	
	#region Wave Timer
	if (waveTimer > 0)
	{
		waveTimer -= 1;
	}
	else if (waveTimer == 0)
	{
		switch (waveState)
		{
			case 0:
			with (obj_Player) instance_destroy();
			with (obj_Enemy) instance_destroy();
			with (obj_Bullet) instance_destroy();
			waveState = 1;
			waveTimer = 150;
			break;
			
			case 1:
			if (global.maxPlayers == 2)
			{
				var player = instance_create_depth(72,121,0,obj_Player);
				player.player = 0;
				var player = instance_create_depth(88,121,0,obj_Player);
				player.player = 1;
				player.image_xscale = -1;
			}
			else
			{
				var player = instance_create_depth(80,121,0,obj_Player);
				player.player = 0;
			}
			
			switch (global.wave)
			{
				case 0:
				var e = instance_create_depth(32,120,0,obj_Enemy);
				e.ability = "NORMAL";
				var e = instance_create_depth(128,120,0,obj_Enemy);
				e.ability = "NORMAL";
				break;
				
				case 1:
				var e = instance_create_depth(32,120,0,obj_Enemy);
				e.ability = "NORMAL";
				var e = instance_create_depth(128,124,0,obj_Enemy);
				e.ability = "AUTO";
				e.image_xscale = -1;
				break;
				
				case 2:
				var e = instance_create_depth(32,120,0,obj_Enemy);
				e.ability = "NORMAL";
				var e = instance_create_depth(32,104,0,obj_Enemy);
				e.ability = "NORMAL";
				var e = instance_create_depth(48,120,0,obj_Enemy);
				e.ability = "NORMAL";
				var e = instance_create_depth(32,92,0,obj_Enemy);
				e.ability = "AUTO";
				break;
				
				default:
				var enemySet = irandom_range(0,1);
				switch (enemySet)
				{
					case 0:
					var e = instance_create_depth(32,120,0,obj_Enemy);
					e.ability = "NORMAL";
					var e = instance_create_depth(128,120,0,obj_Enemy);
					e.ability = "NORMAL";
					break;
					
					case 1:
					var e = instance_create_depth(32,120,0,obj_Enemy);
					e.ability = "NORMAL";
					break;
				}
				break;
			}
			waveState = 0;
			waveTimer = -1;
			break;
		}
	}
	#endregion
}
#endregion
