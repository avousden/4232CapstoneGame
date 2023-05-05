/// @description Insert description here
// You can write your code in this editor

//player sprite
image_speed = 0;
localFrame = 0;

spriteMove = spr_playerMove;
spriteIdle = spr_playerMove;

move = false;
moveSpeed = 3;

goldAttack = 0;
strengthMin = 1 + goldAttack;
strength = strengthMin;
canAttack = true;
attack = obj_Attack1;
