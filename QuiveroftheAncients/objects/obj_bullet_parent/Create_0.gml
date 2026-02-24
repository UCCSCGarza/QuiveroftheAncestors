//set x and y speeds relative to player
direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = 6;

//any additional code for child bullet tracking the player
// or other non-linear motion can be made in the step event, 
//but this code doesn't require any step event for the parent
//to function properly