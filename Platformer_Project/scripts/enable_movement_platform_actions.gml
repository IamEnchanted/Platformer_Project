///enable_movement_platform_actions(acceleration, run_speed, jump_height, right_input, left_input, jump_input, jump_release_input)
/*
    Call this function to enable basic platform physics on
    a movement entity. It will enable running, jumping, and
    wall jumping. If you want to mix and match the possible
    platform actions you can use the individual "enable_action"
    functions separately in the step event of the movement entity.
    
    The reason you pass the inputs into this function is to
    decouple the actions from their inputs. You could even use
    this same function to enable platfomr actions on an AI.
    You would just pass in different inputs.
*/

var acceleration = argument[0]; // Run acceleration amount
var run_speed = argument[1]; // Maximum run speed
var jump_height = argument[2]; // Jump height (Should be a positive value)
var right_input = argument[3]; // The right input
var left_input = argument[4]; // The left input
var jump_input = argument[5]; // The jump input
var jump_release_input = argument[6]; // The jump release input (This is used to allow controlled jump height)

// Enable running
enable_movement_run_horizontal(acceleration, run_speed, right_input, left_input);

// Enable jumping
enable_movement_jump(jump_height, jump_input, jump_release_input);

// Enable wall jump
enable_movement_wall_jump(jump_height, run_speed, jump_input, right_input, left_input);

if (right_input){
    sprite_index = spr_Player_Right;
    }

if (left_input) {
    sprite_index = spr_Player_Left;
    }
    
