//Scale variable to set how big the arrow sprite should be
scale = 0.75

//Image variables to set direction, speed, and scale of the sprite/object
speed = 10;
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;
image_xscale = scale;
image_yscale = scale;

//Damage variables - Change damage amount to change the base damage amount
damage_amount = 10;
final_damage = damage_amount + (shot_power * 0.1);

//Use lerp to iterate life of the arrow
life = lerp(min_life, max_life, charge_ratio);

//Set alarm to tell the step event if the alarm is set
set_alarm = false;