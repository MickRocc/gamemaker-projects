function update_powerup(_player, _increase) {

    // Pick the correct powerup variable
    var _power_up;

    if (_player == 0) {
        _power_up = global.mario_power_up;
    }
    else if (_player == 1) {
        _power_up = global.luigi_power_up;
    }
    else {
        exit; // invalid player
    }

    // Increase
    if (_increase) {
        if (_power_up < 3) {
            _power_up += 1;
        } else {
            exit;
        }
    }
    // Decrease
    else {
        if (_power_up > 0) {
            _power_up -= 1;
        } else {
			_power_up =  0;
            exit;
        }
    }

    // Write back to the correct global
    if (_player == 0) {
        global.mario_power_up = powerup;
    }
    else {
        global.luigi_power_up = powerup;
    }
}