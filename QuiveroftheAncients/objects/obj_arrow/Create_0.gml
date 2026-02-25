scale = 0.75

speed = 10;
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;
image_xscale = scale;
image_yscale = scale;

damage = 10 + (shot_power * 0.1);
life = lerp(min_life, max_life, charge_ratio);
set_alarm = false;