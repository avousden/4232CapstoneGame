
if(room == Room1)
{
	//Player movement detectction
	with(obj_Player)
	{
		if(move)
		scr_playerMovement();
	}

	#region level benefits
	//reset xp if max
	if(xp >= xp_needed) 
	{
		xp = 0;
		xp_needed += 25;
		playerLv ++;
		obj_Player.strength++;
		lvlup = true;
	
		if(lvlup)
		{
			hp = hp_max;
			lvlup = false;
		}
	}
	#region wave change
	if(killCount == killsNeededPerWave)
	{
		wave++;
		createSpawner++;
		killCount = 0;
	}

	//create new enemy spawner every 5 waves
	if(createSpawner == 3)
	{
		instance_create_depth(0,0,10,EnemySpawner);
		createSpawner = 0;
	}
	#endregion

	if(hp <= 0) 
	{	
		//destroy all existing instances
		instance_destroy(EnemySpawner);
		instance_destroy(obj_Enemy1);
		instance_destroy(obj_Enemy2);
		instance_destroy(obj_EnemyBoss);
		
		//reset hp, wave, exp, level
		hp = hp_max;
		wave = 1;
		playerLv = 1;
		xp = 0;
		xp_needed = 100;
		createSpawner = 0;
		killCount = 0;
		EnemySpawner.cdtimer = 5;
		obj_Player.strength = obj_Player.strengthMin + obj_Player.goldAttack;
		
		
		instance_create_depth(0,0,10,EnemySpawner);
	}

	#endregion

	#region 

	if(attackUpgradeCost >= 999) attackUpgradeCost = 999;
	if(healthUpgradeCost >= 999) healthUpgradeCost = 999;
	
	#endregion
	
	#region sounds
	
	
	#endregion

	#region cheats
	if(keyboard_check(vk_control))
	{
		//Add Gold
		if(keyboard_check_pressed(ord("Q"))) gold += 50;
		if(keyboard_check_pressed(ord("W"))) wave ++;
	
	}
	
	if(keyboard_check_pressed(vk_escape))
	{
		game_restart();	
	}

	#endregion
}