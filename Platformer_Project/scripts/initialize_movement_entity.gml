///initialize_movement_entity(gravity, friction, air_resistance, bounce, collision_object)
/*
    This function is used to initialize a movement entity.
    You need to call this function in the CREATE EVENT of
    any object you would like using the movement functions.
*/

hspd = 0;
vspd = 0;
spd = 0;
dir = 0;

grav = argument[0]; // Gravity amount (positive is down).
fric = argument[1]; // Friction amount (Only applies on ground for Platform Games).
air_res = argument[2]; // Friction for all movement( When gravity is 0 it only applies horizontally)
bounce = argument[3]; // Bounce amount. 0 is no bounce, .5 is half velocity lost, 1 is no velocity lost.
collision_object = argument[4] // The object that will be used for collisions.

horizontal_move_input = false;
vertical_move_input = false;
air_jump = 0;
