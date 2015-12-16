///add_movement_horizontal_vertical(hacceleration, vacceleration)
/*
    This function adds a horizontal and/or a vertical acceleration
    to a movement entity. This acceleration will be relative to 
    the previous horizontal speed and vertical speed. It is sort
    of like motion_add but it takes a horizontal acceleration and
    a vertical acceleration as arguments instead of a direction and
    speed.
*/

var hacc = argument[0]; // Horizontal acceleration amount
var vacc = argument[1]; // Vertical accleration amount

// Make sure the movement is relative
hspd += hacc;
vspd += vacc;
