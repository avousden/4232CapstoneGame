// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerMovement(){
	
		//movement
		keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
		keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
		keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
		keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
		

		inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
		inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
		
		if(keyLeft)
		{
			image_xscale = -1;
		} else image_xscale = 1;
	
		hSpeed = lengthdir_x(inputMagnitude * moveSpeed, inputDirection);
		vSpeed = lengthdir_y(inputMagnitude * moveSpeed, inputDirection);
	
		//Horizontal movement collision
		if(place_meeting(x + hSpeed, y, obj_tempWall))
		{
			while(!place_meeting(x + sign(hSpeed), y, obj_tempWall))
			{
				x += sign(hSpeed);
			}
			hSpeed = 0;	
		}
	
		//Vertical movement collision
		if(place_meeting(x, y + vSpeed, obj_tempWall))
		{
			while(!place_meeting(x, y  + sign(vSpeed), obj_tempWall))
			{
				y += sign(vSpeed);
			}
			vSpeed = 0;	
		}
	
		x += hSpeed;
		y += vSpeed;
	
	
	//update sprite
	var oldSprite = sprite_index;
	if(inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteMove;
	} else sprite_index = spriteIdle;

	if (oldSprite != sprite_index)	localFrame = 0;
		
		
	scr_animateSprite();

}