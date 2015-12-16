///add_movement_direction_speed(direction, acceleration);
/*
    This function adds a direction and acceleration
    to a movement entity. This acceleration will be relative to 
    the previous speed of that entity. It works very much like
    motion_add.
*/

var dir = argument[0]; // Direction value
var acc = argument[1]; // Acceleration value

if (instance_exists(id)) {
    var hspd = lengthdir_x(acc, dir);
    var vspd = lengthdir_y(acc, dir);
    id.hspd += hspd;
    id.vspd += vspd;
}
