//Array of objects that need to check collisions
objects = [obj_wall];

//Keyboard variables to check moving left/right, up/down
var horizontal_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vertical_direction = keyboard_check(ord("S")) - keyboard_check(ord("W"));

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

//Check whether the horizontal movement is positive or negative, if negative flip sprite
if (horizontal_movement > 0)
{
	image_xscale = 1
} else if (horizontal_movement < 0)
{
	image_xscale = -1
}

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

//For going through backyard door to forest
if (place_meeting(x, y, obj_door)){
	room_goto(rm_forest);
}

//For going through forest to unicorn/win screen
if (place_meeting(x, y, obj_yehaw)){
	room_goto(rm_unicorn);
}