/// @description Insert description here
// You can write your code in this editor
if(GameController.gold >= GameController.healthUpgradeCost) sprite_index = spr_plusButton;
else sprite_index = spr_plusButtonRed;


if(instance_position(mouse_x, mouse_y, obj_plusButtonHealth))
{
	obj_Player.canAttack = false;
	if(mouse_check_button_pressed(1) and GameController.gold >= GameController.healthUpgradeCost)
	{
		
		GameController.gold -= GameController.healthUpgradeCost;
		GameController.healthUpgradeCost += 5;
		GameController.hp_max += 10;
		GameController.hp += 10;
		
		
	} 
	
} else
{
	obj_Player.canAttack = true;	
}
