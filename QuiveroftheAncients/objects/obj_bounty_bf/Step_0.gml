if(place_meeting(x, y, obj_player))
{
    prompt_active = true;
	if (keyboard_check_pressed(ord("E"))) {
		if(!array_contains(global.bounties, "Big Foot")) {
            array_push(global.bounties, "Big Foot");
        }
		
		instance_destroy();
	}

}


