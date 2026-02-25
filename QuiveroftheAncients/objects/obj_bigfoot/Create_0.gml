//determines if the enemy can "see" the player
active = false;

//enemy won't keep chasing if they are closer than this
//can be set to -1 for melee enemies
min_follow = -1;
//enemy won't keep chasing or shooting if they are further than this
max_follow = 680;

//set to false in other enemies to stop from shooting projectiles.
CAN_SHOOT = false;

move_speed = 4;
leap_speed_mod = 3;
horizontal_direction = 0;
vertical_direction = 0;

//cooldown is the constant time between projectiles (decrease for rapid fire)
COOLDOWN = 45;
//countdown is the current time to next projectile being fired
projectile_countdown = COOLDOWN;

//boogie man / boss stuff
behavior = "default";
wait_time_leap = 90;
leap_length = 20;

num_projectile_spread = 8;
bullets_fired = 0;
time_to_switch = 300;
switch_countdown = time_to_switch;
//"default" = chase and shoot, "leap" = stop and leap
