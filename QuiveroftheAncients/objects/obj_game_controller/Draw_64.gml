/// @description Unicorn Horn GUI



var _margin = 40;
var _spacing = 60;

for (var i = 0; i < global.max_unicorn_horns; i++) {
    // Draw an empty "slot" or ghost horn
    draw_sprite_ext(spr_UnicornSilo, 0, _margin + (i * _spacing), _margin, 1, 1, 0, c_black, 0.3);
    
    // Draw the collected horns on top
    if (i < global.unicorn_horn) {
        draw_sprite(spr_UnicornHorn, 0, _margin + (i * _spacing), _margin);
    }
}
