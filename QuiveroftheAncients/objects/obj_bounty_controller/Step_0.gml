/// Pressing this key opens the bounty list

if(keyboard_check_pressed(ord("J")) && global.has_bounty_list)

{
	if(global.bounty_list){
		
		global.bounty_list = false;
		instance_destroy(obj_bounties);
		
	} else {
		
		global.bounty_list = true;
		instance_create_layer(obj_player.x, obj_player.y, "Prompts", obj_bounties);
		
		
	}
}


