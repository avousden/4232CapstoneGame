/// @description Insert description here
// You can write your code in this editor
attackCD = 5;


if(object_exists(obj_Enemy1)) 
{
	select = instance_nearest(x,y,obj_Enemy1);
	target = true;
} else target = false;