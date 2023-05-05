/// @description Insert description here
// You can write your code in this editor

if (!target and object_exists(obj_Enemy1))
{
	select = instance_nearest(x,y,obj_Enemy1);
	target = true;
}
 if(!instance_exists(select)) target = false;
if (target)
{
	if(instance_exists(select))	
	{
		if(attackCD >= attackCDMax * room_speed)
		{	
			instance_create_depth(x, y, 10, attack);
			attackCD = 0;
		}
		attackCD++;
	} else target = false;
}


