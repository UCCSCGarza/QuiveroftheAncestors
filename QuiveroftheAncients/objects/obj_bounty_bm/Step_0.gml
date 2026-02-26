/// View the Bounty List
if(place_meeting(x, y, obj_player))
{
    prompt_active = true;
	if (keyboard_check_pressed(ord("E"))) {
        global.has_bounty_list = true;
		
		array_push(global.bounties, "Boogie Man");
		
		instance_destroy();
	}

}

