
if(global.bounty_list){
	draw_self();
	// 
    	// get the name of the bounty or string name from bounty controller array
    var _selected_bounty = global.bounties[global.current_bounty];
    var _result = scr_showbounty(_selected_bounty);
    
		  //  Draw the actual data if it exists
    if (_result != undefined) {
        draw_set_halign(fa_center);
        draw_set_color(c_black);
        draw_set_font(fnt_stone_tomb);
        
        // --- Scale Settings ---
        var _txt_scale = 2.5; // 1.5x larger. Change this to 2.0 for double size.

        // Draw the Title (Larger)
        draw_text_transformed(x, y - 100, _result.title, _txt_scale, _txt_scale, 0);
        
        // Draw the Portrait
        draw_sprite(_result.portrait, 0, x - 30, y - 40);
        
        // Draw the Name (Larger)
        draw_text_transformed(x, y + 40, _result.name, _txt_scale, _txt_scale, 0);
        
        // Draw the Crime (Note: draw_text_ext_transformed is needed for wrapping + scaling)
        draw_text_ext_transformed(x, y + 70, _result.crime, 20, 200, _txt_scale, _txt_scale, 0);
        
        // Draw the Reward Icon
        draw_sprite(_result.reward_icon, 0, x - 30, y + 120);
    }
}
