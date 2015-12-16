///set_movement_horizontal_vertical(hspeed, vspeed)
/*
    This function sets a horizontal and/or a vertical speed
    to a movement entity. This speed will NOT be relative to 
    the previous horizontal and vertical speeds. It is sort
    of like motion_set but it takes a horizontal and
    vertical speeds as arguments instead of a direction and
    speed.
*/

var hspd = argument[0]; // Horizontal speed
var vspd = argument[1]; // Vertical speed

// Make sure the movement is NOT relative
if (instance_exists(id)) {
    id.hspd = hspd;
    id.vspd = vspd;
}
