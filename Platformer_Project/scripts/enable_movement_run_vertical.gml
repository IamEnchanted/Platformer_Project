///enable_movement_run_vertical(acceleration, max_speed, up_input, down_input);
/*
    Call this function in order to enable vertical
    running on a movement entity. (For top down games)
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var up_input = argument[2]; // Upwards movement input
var down_input = argument[3]; // Downwards movement input
var vacc = (down_input - up_input)*acc;

vertical_move_input = vacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(vacc) == -1 && vspd > -max_spd) || (sign(vacc) == 1 && vspd < max_spd)) {
    vspd += vacc;
}
