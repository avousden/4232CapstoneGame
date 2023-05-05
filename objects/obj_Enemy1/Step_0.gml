//check health
if(hp <= 0) instance_destroy(self);

//move towards player
direction = point_direction(x, y, obj_Player.x, y);
