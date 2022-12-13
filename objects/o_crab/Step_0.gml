// crab runs to its circle if you get too close
if(point_in_circle(o_boyo.x, o_boyo.y, x,y, 35))
{
	
tooClose = true
}

if(tooClose) || (caught)
{
	image_speed = 1;
	speed = scurrySpeed;
	direction = holeDirection
	
}


// picture taking functions
creaturetrianglecheck();

creaturecaught();