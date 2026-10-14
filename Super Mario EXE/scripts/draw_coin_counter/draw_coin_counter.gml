function draw_coin_counter(_player) {

    var _gui_width = display_get_gui_width();
    var _gui_center_x = _gui_width * 0.5;

    // Mario's coin counter
    if (_player == 0) {

        // Draw Mario's coin icon
        draw_sprite(
            spr_coin_counter, -1,
            _gui_center_x - 72,
            global.mario_coin_counter_ico_y
        );

        // Draw Mario's coin digits with leading zeros
        if (global.coins < 10) {
            draw_text(_gui_center_x, global.mario_coin_counter_y, "00" + string(global.coins));
        }
        else if (global.coins < 100) {
            draw_text(_gui_center_x, global.mario_coin_counter_y, "0" + string(global.coins));
        }
        else if (global.coins < 1000) {
            draw_text(_gui_center_x, global.mario_coin_counter_y, string(global.coins));
        }
    }

    // Luigi's coin counter
    else if (_player == 1) {

        // Draw Luigi's coin icon
        draw_sprite(
            spr_coin_counter, -1,
            global.luigi_coin_counter_ico_x,
            global.luigi_coin_counter_ico_y
        );

        // Draw Luigi's coin digits with leading zeros
        if (global.coins < 10) {
            draw_text(global.luigi_coin_counter_x, global.luigi_coin_counter_y, "00" + string(global.coins));
        }
        else if (global.coins < 100) {
            draw_text(global.luigi_coin_counter_x, global.luigi_coin_counter_y, "0" + string(global.coins));
        }
        else if (global.coins < 1000) {
            draw_text(global.luigi_coin_counter_x, global.luigi_coin_counter_y, string(global.coins));
        }
    }
}
