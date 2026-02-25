// Set the image angle to wherever the mouse is pointing based on the origin
// of the player
image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)

// Set the x and y of the bow based off the image angle and offset from the player
x = obj_player.x + lengthdir_x(offset, image_angle);
y = obj_player.y + lengthdir_y(offset, image_angle);

// Check to see if mouse button is held down, and if held down start incrementing the charge
// variable as long as it is held down
if(mouse_check_button(mb_left)) {
    charge += 1; // charge speed
    
	//	If the charge is the max charge set the index to the fully loaded bow, else change
	//	the index to loading bow stages based off charge amount.
    if (charge >= max_charge) {
		
        charge = max_charge;
		image_index = 3
		
    } else if (charge >= max_charge * 0.5) {
		
		image_index = 2
		
	} else if (charge > 0) {
		
		image_index = 1;
		
	}
}


// If the mouse button is released change the release bool to true, image index, and image speed 
// so it can play the animation, then create an arrow instance with the given charge ratio, charge,
// and max_life
if (mouse_check_button_released(mb_left)) {
	
	//Play animation
	released = true;
    image_index = 4;
    image_speed = 1;
	
	//Creating arrow instance
	instance_create_layer(x, y, "Instances", obj_arrow, {
	    charge_ratio: charge / max_charge,
	    shot_power: charge,
		max_life: max_charge,
	});
	
	//Reset the charge
    charge = 0;
}

// If the released boolean is true play the animation until it reaches the last animation then
// reset the image index and speed back to 0 for next shot
if (released) {
    // If it hits the end of your 2-frame loop (4 and 5)
    if (image_index >= 5) { 
        released = false;
        image_index = 0; // Return to idle
        image_speed = 0; // Stop moving
    }
}