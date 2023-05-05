
if(room == Room1)
{
	#region draw events
//xp percent
xp_percentage = xp / xp_needed;

//exp bar set
fill_width = (xp_bar_width - (2 * xp_bar_border));
draw_set_color(xp_bar_color);
draw_rectangle(xp_bar_x + xp_bar_border, xp_bar_y + xp_bar_border, xp_bar_x + xp_bar_border + fill_width, xp_bar_y + xp_bar_height - xp_bar_border, true);

//exp bar fill
fill_width = (xp_bar_width - (2 * xp_bar_border)) * xp_percentage;
draw_set_color(xp_bar_color);
draw_rectangle(xp_bar_x + xp_bar_border, xp_bar_y + xp_bar_border, xp_bar_x + xp_bar_border + fill_width, xp_bar_y + xp_bar_height - xp_bar_border, false);

//experience text
xp_text = "XP: " + string(xp) + "/" + string(xp_needed);
wave_text = "Wave: " + string(wave);
player_level_text = "Player Level: " + string(playerLv);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(xp_text_color);
//draw_text(xp_bar_x + xp_bar_border, xp_bar_y - 30, xp_text);
draw_text(xp_bar_x + xp_bar_border, xp_bar_y + 10, xp_text);
draw_text(xp_bar_x + xp_bar_border, xp_bar_y - 10, player_level_text);
draw_set_color(c_black);
draw_text(675,90, wave_text);


//hp bar
hp_percentage = hp / hp_max;

hp_fill_width = (hp_bar_width - (2 * hp_bar_border));
draw_set_color(hp_bar_loss_color);
draw_rectangle(hp_bar_x + hp_bar_border, hp_bar_y + hp_bar_border, hp_bar_x + hp_bar_border + hp_fill_width, hp_bar_y + hp_bar_height - hp_bar_border, false);
//hp bar set
hp_fill_width = (hp_bar_width - (2 * hp_bar_border)) * hp_percentage;
draw_set_color(hp_bar_color);
draw_rectangle(hp_bar_x + hp_bar_border, hp_bar_y + hp_bar_border, hp_bar_x + hp_bar_border + hp_fill_width, hp_bar_y + hp_bar_height - hp_bar_border, false);



//hp bar
hp_text = "HP: " + string(hp) + "/" + string(hp_max);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(hp_text_color);
draw_text(hp_bar_x + hp_bar_border, hp_bar_y + 10, hp_text);


//gold count
gold_text = string(gold);
draw_text(obj_GoldCoin.x , obj_GoldCoin.y + 7,gold_text);

//hire ally button
hire_text = "HIRE ALLY"
cost_text = string(cost);
draw_set_color(hire_color);
draw_text(obj_button.x - 40, obj_button.y - 35, hire_text);
if(gold < cost) draw_set_color(c_red);
if(gold >= cost) draw_set_color(c_green);
draw_text(obj_button.x - 10, obj_button.y - 20, cost_text);

//upgrade screen
plStrength_text = "Strength: " + string(obj_Player.strength);
plHealth_text = "Health: " + string(GameController.hp_max);
plHealthCost = string(healthUpgradeCost) + "G";
plAttackCost = string(attackUpgradeCost) + "G";

draw_set_color(c_black);
draw_text(obj_plusButtonAttack.x - 225, obj_plusButtonAttack.y - 10, plStrength_text);
draw_text(obj_plusButtonHealth.x - 225, obj_plusButtonHealth.y - 10, plHealth_text);
draw_text(obj_plusButtonAttack.x - 35, obj_plusButtonAttack.y - 7, plAttackCost);
draw_text(obj_plusButtonHealth.x - 35, obj_plusButtonHealth.y - 10, plHealthCost);


//draw ESC to quit
quit_text = "Press ESC to Quit";
draw_set_color(c_black);
draw_text(640, 231, quit_text);

#endregion
}