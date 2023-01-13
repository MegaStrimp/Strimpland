///@description Camera - Follow Object
///@param {real} followingObject

function scr_Camera_FollowObject(argument0)
{
	var followingObject = argument0;
	
	global.camera.followingObject = followingObject;
	global.camera.cameraX = followingObject.x - (global.gameWidth / 2);
	global.camera.cameraY = followingObject.y - (global.gameHeight / 2);
}