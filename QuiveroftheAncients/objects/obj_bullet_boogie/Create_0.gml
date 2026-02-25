//set x and y speeds relative to player
show_debug_message("Shooting spread");
audio_play_sound(snd_laser, 1, false);
direction = point_direction(x,y,obj_player.x,obj_player.y);
direction += (360/obj_boogie_man.num_projectile_spread)*obj_boogie_man.bullets_fired;
image_angle = direction;
speed = 4;

//any additional code for child bullet tracking the player
// or other non-linear motion can be made in the step event, 
//but this code doesn't require any step event for the parent
