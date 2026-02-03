///@desc Interaction Script
/// @desc Robust Collision Check with Object3

// --- 1. Calculate Desired Movement (example) ---
// Replace this with your actual movement logic (input, gravity, etc.)
var move_speed = 0
var h_input = 0
var v_input = 0
var hspd = 0
var vspd = 0
if(h_input == MveButton_pressed(global.controlMode, global.playerRight) - MveButton_pressed(global.controlMode, global.playerLeft)!=-1){
	h_input = MveButton_pressed(global.controlMode, global.playerRight) - MveButton_pressed(global.controlMode, global.playerLeft)
}
if(v_input == MveButton_pressed(global.controlMode, global.playerDown) - MveButton_pressed(global.controlMode, global.playerUp)!=-1){
	v_input = MveButton_pressed(global.controlMode, global.playerDown) - MveButton_pressed(global.controlMode, global.playerUp)
}
hspd = h_input * global.playerSpeed
vspd = v_input * global.playerSpeed


// --- 1. Calculate Raw Input ---
h_input = MveButton_pressed(global.controlMode, global.playerRight) - MveButton_pressed(global.controlMode, global.playerLeft);
v_input = MveButton_pressed(global.controlMode, global.playerDown) - MveButton_pressed(global.controlMode, global.playerUp); 

// --- 2. Directional Priority Check (Prevent Diagonal Movement) ---

// Check if movement is attempted on BOTH axes
if (h_input != 0 && v_input != 0) {
    // If both horizontal and vertical inputs are active,
    // arbitrarily choose one axis to prioritize (e.g., Horizontal)

    // Prioritize Horizontal: Ignore Vertical input
    v_input = 0
	global.playervDir = 0
    
    // OR, to prioritize Vertical: Ignore Horizontal input
    h_input = 0
	global.playerhDir = 0
}

// --- 3. Calculate Speed and Apply Movement (Continue with your existing collision code) ---

// The h_input/v_input variables will now only ever contain a non-zero value on one axis per step.
hspd = h_input * global.playerSpeed;
vspd = v_input * global.playerSpeed;


// --- 2. Horizontal (X-Axis) Collision Check ---

// Check if moving horizontally will intersect Object3
if (place_meeting(x + hspd, y, Object3)){
    // If a collision *will* happen, move as close as possible without colliding
    while (!place_meeting(x + sign(hspd), y, Object3)){
        x += sign(hspd)
    }
    // Stop horizontal movement
	hspd = 0
}

// Apply the (potentially reduced or zeroed) horizontal speed
x += hspd


// --- 3. Vertical (Y-Axis) Collision Check ---

// Check if moving vertically will intersect Object3
if (place_meeting(x, y + vspd, Object3)){
    // If a collision *will* happen, move as close as possible without colliding
    while (!place_meeting(x, y + sign(vspd), Object3)){
        y += sign(vspd)
    }
    // Stop vertical movement
		vspd = 0
}

// Apply the (potentially reduced or zeroed) vertical speed
y += vspd


if(hspd != 0 || vspd != 0){
	moving = true
}
else{
	moving = false
}
player_animation(global.playerDir,global.playerAction)