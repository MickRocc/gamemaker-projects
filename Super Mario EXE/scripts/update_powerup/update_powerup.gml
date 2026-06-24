function update_powerup(player, increase) {

    // Pick the correct powerup variable
    var powerup;

    if (player == 0) {
        powerup = global.Mario_powerup;
    }
    else if (player == 1) {
        powerup = global.Luigi_powerup;
    }
    else {
        exit; // invalid player
    }

    // Increase
    if (increase) {
        if (powerup < 3) {
            powerup += 1;
        } else {
            exit;
        }
    }
    // Decrease
    else {
        if (powerup > 0) {
            powerup -= 1;
        } else {
			powerup =  0;
            exit;
        }
    }

    // Write back to the correct global
    if (player == 0) {
        global.Mario_powerup = powerup;
    }
    else {
        global.Luigi_powerup = powerup;
    }
}