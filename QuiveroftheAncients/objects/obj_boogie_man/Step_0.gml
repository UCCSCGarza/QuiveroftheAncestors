//Array of objects that need to check collisions
objects = [obj_wall];

//Find player, if close enough, then follow
player_distance = distance_to_object(obj_player)
if (behavior == "default"){
	
	if (player_distance < max_follow) {
		//if not too close, follow
		if (player_distance > min_follow){
			horizontal_direction = sign(obj_player.x-x);
			vertical_direction = sign(obj_player.y-y);
		}else{
			//don't follow (too close)
			horizontal_direction = 0;
			vertical_direction = 0;
		}
		//checks if enemy is ranged
		if (CAN_SHOOT){
			
			projectile_countdown--;
			//if projectile is ready to shoot, create projectile
			//and reset countdown
			if(projectile_countdown<=0){
				instance_create_layer(x,y,"Instances",obj_bullet_parent);
				projectile_countdown = COOLDOWN;
			}
		}
	}else{
		//don't follow (out of range)
		horizontal_direction = 0;
		vertical_direction = 0;
	}
	switch_countdown--;
	if (switch_countdown<=0){
		behavior = "spew";	
		switch_countdown = time_to_switch;
	}
//default behavior	
}else if (behavior == "spew"){
	
	//stop moving
	horizontal_direction = 0;
	vertical_direction = 0;
	if (projectile_countdown <= 0){
		for (var i = 0; i < num_projectile_spread; i++){		
			instance_create_layer(x,y,"Instances",obj_bullet_boogie);
			bullets_fired++;
		}
		bullets_fired = 0;
		projectile_countdown = COOLDOWN;
	//firing bullets	
	} else {
		projectile_countdown--;	
	}

	switch_countdown--;

	if (switch_countdown <= 0){
		behavior = "default";
		switch_countdown = time_to_switch;
	}
	
}//spew behavior



//Code below is copied from player movement

//Check to see if multiple directions are entered so if going diagonally the movement speed is normalized
var len = point_distance(0, 0, horizontal_direction, vertical_direction);
if (len > 0) {
    horizontal_direction /= len;
    vertical_direction /= len;
}

//Movement variables to set movement based on move speed * direction
var horizontal_movement = horizontal_direction * move_speed;
var vertical_movement = vertical_direction * move_speed;

//Add the horizontal movement
x += horizontal_movement;

//For loop to iterate through the object list for collisions
for (var i = 0; i < array_length(objects); i++){
	
	//While loop to check if the player is meeting with walls. If so, it will undo the previous movement line.
	while (place_meeting(x, y, objects[i]))
	{
	    x -= sign(horizontal_movement);
	}
	
}

//Add the vertical movement
y += vertical_movement;


//For loop to iterate through the object list for collisions
for (var i = 0; i < array_length(objects); i++){
	
	//While loop to check if the player is meeting with walls. If so, it will undo the previous movement line.
	while (place_meeting(x, y, objects[i]))
	{
		y -= sign(vertical_movement);
	}
	
}


if (hp <= 0){
	instance_create_layer(x, y, "Instances", obj_UnicornHorn);
	instance_destroy()
}