/// @description Draw event for the Unicorn Dialogue

if (showing_dialogue == true)
{
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    var border = 4;
    var box_w = 500;
    var box_h = 100;
	
    var box_left   = (gui_w / 2) - (box_w / 2);
    var box_right  = (gui_w / 2) + (box_w / 2);
    var box_top    = (gui_h / 2) - (box_h / 2);
    var box_bottom = (gui_h / 2) + (box_h / 2);

    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(box_left, box_top, box_right, box_bottom, false);
	
    draw_set_alpha(1.0);
    draw_set_color(c_white);
    draw_rectangle(box_left + border, box_top + border, box_right - border, box_bottom - border, false);

    draw_set_color(c_black);
    draw_rectangle(box_left + (border * 2), box_top + (border * 2), box_right - (border * 2), box_bottom - (border * 2), false);

    if (current_dialogue.sprite != -1) {
        draw_sprite(current_dialogue.sprite, 0, box_left + (border * 3), box_top + (border * 3));
    }

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    var text_w = box_w - (border * 6); 
    draw_text_ext(gui_w / 2, gui_h / 2, current_dialogue.message, 20, text_w);

    alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);
