if (global.checkpointR != 0)
{
    room_goto(global.checkpointR);
}
else
{
    room_restart();
}

var obj_death = argument[0];

if (place_meeting(x,y,obj_death))
{
    if (global.checkpointR != 0)
{
    room_goto(global.checkpointR);
}
}
else
{
    game_restart();
}
