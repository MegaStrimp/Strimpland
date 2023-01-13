///@description Camera

#region Camera View Size
camera_set_view_size(view,global.gameWidth,global.gameHeight);
#endregion

#region Camera Position
if ((followingObject != 1) and (instance_exists(followingObject)))
{
	cameraX = followingObject.x - (global.gameWidth / 2);
	cameraY = followingObject.y - (global.gameHeight / 2);
}
#endregion

#region Set Camera
cameraX = clamp(cameraX,0,room_width - global.gameWidth);
cameraY = clamp(cameraY,0,room_height - global.gameHeight);

camera_set_view_pos(view,cameraX,cameraY);
#endregion