/// @description Insert description here
// You can write your code in this editor
randY = random_range(300, 760);

if(instance_position(mouse_x, mouse_y, obj_button))
{
	obj_Player.canAttack = false;
	if(mouse_check_button_pressed(1) and GameController.gold >= GameController.cost)
	{
		
		sprite_index = spr_buttonPr;
		GameController.gold -= GameController.cost;
		GameController.cost += 5;
		GameController.allyCount++;
		if(GameController.allyCount >= 5)
			instance_create_depth(100,randY, 10, obj_ally2);
		else 
			instance_create_depth(145,randY, 10, obj_ally1);
		GameController.totalAllies++;
		if(GameController.allyCount == 5)
		{
			//GameController.cost += 50;
			GameController.allyCount = 0;
		}
		
		
	} else sprite_index = spr_buttonUn;
	
} else
{
	obj_Player.canAttack = true;	
}
