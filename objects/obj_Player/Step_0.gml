/// @description Movement & Collision
global.speedLeft = lerp(global.speedLeft, global.leftGoal, global.lerpVal);
global.speedUp = lerp(global.speedUp, global.upGoal, global.lerpVal);
global.speedDown = lerp(global.speedDown, global.downGoal, global.lerpVal);
global.speedRight = lerp(global.speedRight, global.rightGoal, global.lerpVal);

global.checkPosX = x + global.speedRight - global.speedLeft;
global.checkPosY = y + global.speedDown - global.speedUp;

// Checks if you'll collide with the wall before moving 
//When adding more objects make it a table [x,y,z]

if (!place_meeting(global.checkPosX, y, obj_Wall))
{
	x = global.checkPosX;
}
else if (!place_meeting(global.checkPosX, y + 4, obj_Wall))
{
	x = global.checkPosX;
	global.checkPosY += 4;
}
else if (!place_meeting(global.checkPosX, y - 4, obj_Wall))
{
	x = global.checkPosX;
	global.checkPosY -= 4;
}


if (!place_meeting(x, global.checkPosY, obj_Wall))
{
	y = global.checkPosY;
}

//camera_set_view_pos(view_camera[0], x - 683, y - 384)