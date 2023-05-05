#region xp and hp bar
xp_bar_width = 200;      
xp_bar_height = 20;      
xp_bar_border = 2;       
xp_bar_x = 30;           
xp_bar_y = 40;           
xp_bar_color = c_green;
xp_text_color = c_white; 
xp = 0;          
xp_needed = 100;

hp_bar_width = 200;
hp_bar_height = 20;
hp_bar_border = 2;
hp_bar_x = 30;
hp_bar_y = 65;
hp_bar_color = c_green;
hp_bar_loss_color = c_red;
hp_text_color = c_white;
hp = 100;
hp_max = 100;

#endregion

#region level benefits
playerLv = 1;
lvlup = false;
killCount = 0;
wave = 1;
killsNeededPerWave = 10;

gold = 0;
cost = 50;
allyCount = 0;
totalAllies = 0;
hire_color = c_yellow;

attackUpgradeCost = 1;
healthUpgradeCost = 1;

createSpawner = 0;
#endregion

if(!audio_is_playing(BGMusic)) audio_play_sound(BGMusic, 1, true);

