
if (!is_finished) {
    if (char_index < string_length(text_full)) {
        char_index += char_speed;
        text_current = string_copy(text_full, 1, floor(char_index));
    } else {
        is_finished = true;
    }
}

if (mouse_check_button_pressed(mb_left)) {
    if (!is_finished) {
        char_index = string_length(text_full);
        text_current = text_full;
        is_finished = true;
    } else {
        global.text_index++;
        
        if (global.text_index < array_length(text_array)) {
            text_full = text_array[global.text_index];
            text_current = "";
            char_index = 0;
            is_finished = false;
        } else {
            instance_destroy();
        }
    }
}