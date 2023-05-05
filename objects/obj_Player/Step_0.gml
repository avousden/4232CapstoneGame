/// @description Insert description here
// You can write your code in this editor
#region player sprite direction
if(mouse_x < obj_Player.x)
{
	image_xscale = -1;
} else
{
	image_xscale = 1;
}
#endregion

#region attack
if(mouse_check_button_pressed(1) and canAttack)
{
	instance_create_depth(obj_Player.x, obj_Player.y - 25, 10, attack)
};

#endregion 
