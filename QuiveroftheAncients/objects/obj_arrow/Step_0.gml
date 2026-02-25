//For each frame in step event decrement the life
life -= 1;

//If the set alarm bool is not true
if (!set_alarm)
{
	//If the life of the arrow is 0 or less
	if (life <= 0)
	{
		
		//Change the image angle to point it downwards for prettiness :D
		//Change the speed to 0 so it stops moving
		//Start the alarm[0] based on  room speed * 2 for 2 seconds then set the boolean
		//so the alarm does not infinitely reset.
		image_angle = -90
		speed = 0;
		alarm[0] = game_get_speed(gamespeed_fps) * 2;
		set_alarm = true;
	}
}
