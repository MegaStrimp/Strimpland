///@description Screen - Setup
///@param {real} viewWidth
///@param {real} viewHeight
///@param {real} viewScale

function scr_Screen_Setup(argument0, argument1, argument2)
{
	var viewWidth = argument0;
	var viewHeight = argument1;
	var viewScale = argument2;
	
	#region Set Window Size
	window_set_size(viewWidth * viewScale,viewHeight * viewScale);
	#endregion
	
	#region Gui Size
	display_set_gui_size(viewWidth * viewScale,viewHeight * viewScale);
	#endregion
	
	#region Resize Surface
	surface_resize(application_surface,global.gameWidth,global.gameHeight);
	#endregion
	
	#region Window Center
	window_center();
	#endregion
	
	#region Display Reset
	display_reset(0,false);
	#endregion
}