confirm_key = keyboard_check_pressed(vk_space);
skip_key = keyboard_check_pressed(vk_shift);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 33;

if (setup == false) {
    setup = true;
    
    draw_set_font(fText);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    // Loop through the pages
    page_number = array_length(text);
    for (var p = 0; p < page_number; p++) {
        text_length[p] = string_length(text[p]);
        text_x_offset[p] = 44;
    }
}

// Typing text
if (draw_char < text_length[page]) {
    draw_char += text_speed;
    draw_char = clamp(draw_char, 0, text_length[page]);
}

if (confirm_key) {
    if (draw_char == text_length[page]) {
        if (page < page_number - 1) {
            page++;
            draw_char = 0;
        } else {
            instance_destroy();
        }
    }
} else if (skip_key && draw_char != text_length[page]) {
    draw_char = text_length[page];
}

txtb_image += txtb_image_spd;
txtb_image = txtb_image mod sprite_get_number(txtb_sprite);  // Loop sprite frames
txtb_sprite_w = sprite_get_width(txtb_sprite);
txtb_sprite_h = sprite_get_height(txtb_sprite);

draw_sprite_ext(txtb_sprite, txtb_image, textbox_x + text_x_offset[page], textbox_y, textbox_width/txtb_sprite_w, textbox_height/txtb_sprite_h, 0, c_white, 1);

var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);
