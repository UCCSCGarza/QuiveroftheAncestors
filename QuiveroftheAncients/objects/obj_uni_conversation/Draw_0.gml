/// @description Draw event for the Unicorn Dialogue
var box_height = 0;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Dialogue box horizontal range
var box_left  = gui_w * 0.25;
var box_right = gui_w * 0.75;

// Dialogue box vertical anchor: centered in middle of screen height
// We'll compute box_top after we know the box height

if (showing_dialogue == true)
{
    // --- A) Layout variables
    var height = 32;
    var border = 5;
    var padding = 16;

    // Compute box height based on text and sprite
    height = string_height(current_dialogue.message);

    if (current_dialogue.sprite != -1)
    {
        if (sprite_get_height(current_dialogue.sprite) > height)
            height = sprite_get_height(current_dialogue.sprite);
    }

    height += padding * 2;
    box_height = height; // store for choices

    // Compute vertical placement (centered)
    var box_top    = (gui_h * 0.5) - (height * 0.5);
    var box_bottom = box_top + height;

    // Draw textbox background (50% translucent)
    draw_set_alpha(0.5);

    draw_set_color(c_black);
    draw_rectangle(box_left, box_top, box_right, box_bottom, false);

    draw_set_color(c_white);
    draw_rectangle(box_left + border, box_top + border,
                   box_right - border, box_bottom - border, false);

    draw_set_color(c_black);
    draw_rectangle(box_left + (border * 2), box_top + (border * 2),
                   box_right - (border * 2), box_bottom - (border * 2), false);

    // Draw sprite / text 
    draw_set_alpha(1);

    // sprite position inside the centered box
    var spr_x = box_left + (border * 3);
    var spr_y = box_top  + (border * 3);

    if (current_dialogue.sprite != -1)
        draw_sprite(current_dialogue.sprite, 0, spr_x, spr_y);

    // text starts inside the centered box
    var text_x = box_left + padding;
    var text_y = box_top  + padding;

    if (current_dialogue.sprite != -1)
        text_x = box_left + sprite_get_width(current_dialogue.sprite) + (padding * 2);

    var text_w = (box_right - box_left) - (padding * 2);

    // keep extra room if sprite exists
    if (current_dialogue.sprite != -1)
        text_w = (box_right - box_left) - sprite_get_width(current_dialogue.sprite) - (padding * 3);

    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, current_dialogue.message, 16, text_w);

    // your original fade-in value (kept)
    alpha = lerp(alpha, 1, 0.06);
}

//  reset alpha
draw_set_alpha(1);

