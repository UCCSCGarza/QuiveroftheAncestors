//determines if the enemy can "see" the player
active = false;

//enemy won't keep chasing if they are closer than this
//can be set to -1 for melee enemies
min_follow = 160;
//enemy won't keep chasing or shooting if they are further than this
max_follow = 480;

//set to false in other enemies to stop from shooting projectiles.
CAN_SHOOT = true;

move_speed = 4;
horizontal_direction = 0;
vertical_direction = 0;

//cooldown is the constant time between projectiles (decrease for rapid fire)
COOLDOWN = 45;
//countdown is the current time to next projectile being fired
projectile_countdown = COOLDOWN;

//boogie man / boss stuff
behavior = "default";
num_projectile_spread = 8;
bullets_fired = 0;
time_to_switch = 600;
switch_countdown = time_to_switch;
//"default" = chase and shoot, "spew" = stop and fire burst
