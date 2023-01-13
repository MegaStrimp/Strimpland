///@description Transition - Go To Room
///@param {real} targetRoom

function scr_Transition_GoToRoom(argument0)
{
	var targetRoom = argument0;
	
	if (!instance_exists(obj_Fade))
	{
		var fade = instance_create_depth(0,0,-999,obj_Fade);
		fade.targetRoom = targetRoom;
	}
}