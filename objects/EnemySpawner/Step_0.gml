/// @description Insert description here
// You can write your code in this editor
if(cd >= cdtimer * room_speed)
{
	var roomW = room_width;
	var roomH = room_height;
	var randX = irandom(roomW);
	var randY = random_range(300, 750);
	x = 1370;
	y = randY; 
	var randEnemy = irandom_range(1,5);
	if(randEnemy == 1) enemyToSpawn = obj_Enemy1;
	if(randEnemy == 2) enemyToSpawn = obj_Enemy2;
	if(randEnemy == 3) enemyToSpawn = obj_Enemy3;
	if(randEnemy == 4) enemyToSpawn = obj_Enemy4;
	if(randEnemy == 5) enemyToSpawn = obj_Enemy5;
	
	instance_create_depth(x, y, 10,enemyToSpawn);
	if(GameController.wave % 10 == 0) 
	{
		instance_create_depth(x, y, 10,obj_EnemyBoss);
		cdtimer = 3;
		
		
	} else cdtimer = 5;
	
	cd = 0;
}
cd++;

	
