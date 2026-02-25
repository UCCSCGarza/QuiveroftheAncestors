
if (visible) {
	draw_self();
	
	// get the name of the bounty or string name from bounty controller array
	var _selected_bounty = global.bounties[global.current_bounty];
	
	var _result = scr_showbounty(_selected_bounty);
	
	  //  Draw the actual data if it exists
    if (_result != undefined) {

        
        //  Text
        draw_set_halign(fa_center);
        draw_set_color(c_black);
		draw_set_font(fnt_stone_tomb);
		
		// Draw the Portrait and Wanted Sign
		draw_text(x, y - 80, _result.title);
        draw_sprite(_result.portrait, 0, x - 30, y - 40);
        
        //  Name and Crime

        draw_text(x, y + 40, _result.name);
        draw_text_ext(x, y + 70, _result.crime, 20, 200); // 200 is max width before wrapping
        
        //  the Reward Icon
        draw_sprite(_result.reward_icon, 0, x - 30, y + 120);
    }
}


