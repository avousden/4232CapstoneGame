// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_animateSprite(){
	
	var cardinalDirection = round(direction / 90);
	var totalFrames = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (cardinalDirection * totalFrames);
	localFrame += sprite_get_speed(sprite_index) / 60;
	
	//loop and end animation
	if(localFrame >= totalFrames)
	{
		animationEnd = true;
		localFrame -= totalFrames;
	} else animationEnd = false;

}