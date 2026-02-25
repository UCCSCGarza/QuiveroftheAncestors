life -= 1;

if (!set_alarm)
{
	if (life <= 0)
	{
		image_angle = -90;
		speed = 0;
		alarm[0] = game_get_speed(gamespeed_fps) * 2;
		set_alarm = true;
	}
}
