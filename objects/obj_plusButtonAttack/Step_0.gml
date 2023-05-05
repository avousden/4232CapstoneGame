/// @description Insert description here
// You can write your code in this editor
if(GameController.gold >= GameController.attackUpgradeCost) sprite_index = spr_plusButton;
else sprite_index = spr_plusButtonRed;


if(instance_position(mouse_x, mouse_y, obj_plusButtonAttack))
{
	obj_Player.canAttack = false;
	if(mouse_check_button_pressed(1) and GameController.gold >= GameController.attackUpgradeCost)
	{
		
		GameController.gold -= GameController.attackUpgradeCost;
		GameController.attackUpgradeCost += 5;
		obj_Player.goldAttack ++;
		obj_Player.strength++;
		
		
	} 
	
} else
{
	obj_Player.canAttack = true;	
}
