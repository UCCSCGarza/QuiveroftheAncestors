/// View the Bounty List
if(place_meeting(x, y, obj_player) && !global.has_bounty_list)
{
	global.has_bounty_list = true;
}

if(global.bounty_list)
{
	visible = true;
} else {
	visible = false;
}

if(global.bounty_list)
{
	if (keyboard_check_pressed(vk_right)) {
	    // Adding 1, then modulo total_pages keeps it in range 0 to 2
	    global.current_bounty = (global.current_bounty  + 1) % global.total_bounties;
	}

	if (keyboard_check_pressed(vk_left)) {
	    global.current_bounty  = (global.current_bounty  - 1 + global.total_bounties) % global.total_bounties;
	}
}
