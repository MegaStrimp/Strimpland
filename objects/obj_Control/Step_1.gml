///@description Begin Step

#region Inputs
for (var i = 0; i < global.maxPlayers; i += 1)
{
	global.keyUpHeld[i] = keyboard_check(global.keyUp[i]);
	global.keyUpPressed[i] = keyboard_check_pressed(global.keyUp[i]);
	global.keyUpReleased[i] = keyboard_check_released(global.keyUp[i]);
	
	global.keyDownHeld[i] = keyboard_check(global.keyDown[i]);
	global.keyDownPressed[i] = keyboard_check_pressed(global.keyDown[i]);
	global.keyDownReleased[i] = keyboard_check_released(global.keyDown[i]);
	
	global.keyLeftHeld[i] = keyboard_check(global.keyLeft[i]);
	global.keyLeftPressed[i] = keyboard_check_pressed(global.keyLeft[i]);
	global.keyLeftReleased[i] = keyboard_check_released(global.keyLeft[i]);
	
	global.keyRightHeld[i] = keyboard_check(global.keyRight[i]);
	global.keyRightPressed[i] = keyboard_check_pressed(global.keyRight[i]);
	global.keyRightReleased[i] = keyboard_check_released(global.keyRight[i]);
	
	global.keyAHeld[i] = keyboard_check(global.keyA[i]);
	global.keyAPressed[i] = keyboard_check_pressed(global.keyA[i]);
	global.keyAReleased[i] = keyboard_check_released(global.keyA[i]);
	
	global.keyBHeld[i] = keyboard_check(global.keyB[i]);
	global.keyBPressed[i] = keyboard_check_pressed(global.keyB[i]);
	global.keyBReleased[i] = keyboard_check_released(global.keyB[i]);
	
	global.keyStartHeld[i] = keyboard_check(global.keyStart[i]);
	global.keyStartPressed[i] = keyboard_check_pressed(global.keyStart[i]);
	global.keyStartReleased[i] = keyboard_check_released(global.keyStart[i]);
	
	global.keySelectHeld[i] = keyboard_check(global.keySelect[i]);
	global.keySelectPressed[i] = keyboard_check_pressed(global.keySelect[i]);
	global.keySelectReleased[i] = keyboard_check_released(global.keySelect[i]);
}
#endregion