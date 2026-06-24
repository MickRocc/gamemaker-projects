function draw_coin_counter(player) {

    // Mario's coin counter
    if (player == 0) {

        // Draw Mario's coin icon
        draw_sprite(
            sprCoinCounter, -1,
            global.MarioCoinCounterIco_x,
            global.MarioCoinCounterIco_y
        );

        // Draw Mario's coin digits with leading zeros
        if (global.coins < 10) {
            draw_text(global.MarioCoinCounter_x, global.MarioCoinCounter_y, "00" + string(global.coins));
        }
        else if (global.coins < 100) {
            draw_text(global.MarioCoinCounter_x, global.MarioCoinCounter_y, "0" + string(global.coins));
        }
        else if (global.coins < 1000) {
            draw_text(global.MarioCoinCounter_x, global.MarioCoinCounter_y, string(global.coins));
        }
    }

    // Luigi's coin counter
    else if (player == 1) {

        // Draw Luigi's coin icon
        draw_sprite(
            sprCoinCounter, -1,
            global.LuigiCoinCounterIco_x,
            global.LuigiCoinCounterIco_y
        );

        // Draw Luigi's coin digits with leading zeros
        if (global.coins < 10) {
            draw_text(global.LuigiCoinCounter_x, global.LuigiCoinCounter_y, "00" + string(global.coins));
        }
        else if (global.coins < 100) {
            draw_text(global.LuigiCoinCounter_x, global.LuigiCoinCounter_y, "0" + string(global.coins));
        }
        else if (global.coins < 1000) {
            draw_text(global.LuigiCoinCounter_x, global.LuigiCoinCounter_y, string(global.coins));
        }
    }
}
