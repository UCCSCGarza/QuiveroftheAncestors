/// Pressing this key opens the bounty list

if(keyboard_check_pressed(ord("J")) && variable_global_exists("bounty_list") && global.has_bounty_list)

{
	if(global.bounty_list){
		
		global.bounty_list = false;
		
	} else {
		
		global.bounty_list = true;
		
	}
}
