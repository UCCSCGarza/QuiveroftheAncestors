// Set the font, color, and alignment.
draw_set_color($00FFFF)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// At the center of the screen, draw the given message.
draw_text(camera_get_view_x(view_camera[0]) + 750, camera_get_view_y(view_camera[0]) + 450, myMessage)