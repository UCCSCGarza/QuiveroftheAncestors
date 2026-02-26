// Drawing our starting prompt
if (prompt_active) {
// get gui width and height for conversation text
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
	var border = 4;
	var box_w = 500;
	var box_h = 100;
	
	// dimensions for text box prompt 
	var box_left = (gui_w /2 - (box_w / 2));
	var box_right = (gui_w / 2 + (box_w / 2));
	var box_bottom = (gui_h / 2 - (box_h / 2));
	var box_top = (gui_h / 2 + (box_h / 2));
	

	// Draw textbox background (50% translucent)

	
    draw_set_alpha(0.5);

    draw_set_color(c_black);
    draw_rectangle(box_left, box_top, box_right, box_bottom, false);
	
	// The border for the prompt text
	draw_set_alpha(1.0);
    draw_set_color(c_white);
    draw_rectangle(box_left + border, box_top + border,
                   box_right - border, box_bottom - border, false);

    draw_set_color(c_black);
    draw_rectangle(box_left + (border * 2), box_top + (border * 2),
                   box_right - (border * 2), box_bottom - (border * 2), false);
				   
	// Draw the Prompt's text

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(gui_w / 2, gui_h / 2, "Big Foot huh?  \n How many of these horns do I need to see the unicorn? ");
}

if (prompt_active) {
       if (keyboard_check_pressed(vk_escape) &&
        !instance_position(obj_player.x, obj_player.y, obj_forest)) { 
        prompt_active = false;
    }
}
