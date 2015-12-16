///enable_movement_run_horizontal(acceleration, max_speed, right_input, left_input)
/*
    Call this function in order to enable horizontal
    running on a movement entity.
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var right_input = argument[2]; // Right movement input
var left_input = argument[3]; // Left movement input
var hacc = (right_input - left_input)*acc;

horizontal_move_input = hacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(hacc) == -1 && hspd > -max_spd) || (sign(hacc) == 1 && hspd < max_spd)) {
    hspd += hacc;
}
