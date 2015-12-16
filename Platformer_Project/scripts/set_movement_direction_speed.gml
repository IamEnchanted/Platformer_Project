///set_movement_direction_speed(direction, speed);
/*
    This function sets a direction and acceleration
    to a movement entity. This acceleration will NOT be relative to 
    the previous speed of that entity. It works very much like
    motion_set.
*/

var dir = argument[0]; // Direction value
var spd = argument[1]; // Speed value

if (instance_exists(id)) {
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    id.hspd = hspd;
    id.vspd = vspd;
}
