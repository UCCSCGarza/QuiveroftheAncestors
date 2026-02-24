speed = 10;
direction = point_direction(x, y, mouse_x, mouse_y);

damage = 5 + (shot_power * 0.1);

show_debug_message(string(charge_ratio));
show_debug_message(string(shot_power));

life = lerp(min_life, max_life, charge_ratio);