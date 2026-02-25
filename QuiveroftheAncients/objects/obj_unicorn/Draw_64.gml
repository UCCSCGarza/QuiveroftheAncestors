// Drawing our starting prompt
if (prompt_active) {
    gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(gui_w / 2, gui_h - 80, "Press 'E' if you want to speak to the Unicorn");
}

if (prompt_active) {
    if (mouse_check_button_pressed(mb_left) &&
        !instance_position(mouse_x, mouse_y, obj_unicorn)) {
        prompt_active = false;
    }
}
