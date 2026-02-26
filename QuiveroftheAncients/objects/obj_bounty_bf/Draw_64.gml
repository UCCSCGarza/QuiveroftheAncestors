// Drawing our starting prompt
if (prompt_active) {
    gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
	prompt_active = true;
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(gui_w / 2, gui_h - 80, "Press 'E' to grab this bounty...");
}

if (prompt_active) {
    if (keyboard_check_pressed(vk_escape) &&
        !instance_position(obj_player.x, obj_player.y, obj_bounty_bf)) {
        prompt_active = false;
    }
}
