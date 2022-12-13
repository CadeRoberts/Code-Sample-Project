// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pictureMode(){

orbit = 6 ;


// play zoom sounds




//set orbit left or right. press shift for quick
if (keyLeft)
	{
		oSpeed = 2;	
	}

if (keyRight)
	{
		oSpeed = -2;	
	} 
	
if ((keyRun) && (keyLeft)) or ((keyLeft) && (keyRun))
	{
		oSpeed = 5;	
	}


if ((keyRun) && (keyRight)) or ((keyRight) && (keyRun))
	{
		oSpeed = -5;	
	}

angle += oSpeed;
if (angle >= 360)
	{
	angle -=360	;
	}

x = lengthdir_x(orbit, angle ) + o_boyo.x							//actual movement
y = lengthdir_y(orbit, angle ) + (o_boyo.y -DSLRYOffset)

oSpeed =0; // only moves while pressed

leftCornerAngle = point_direction(o_zoomMarker1.x, o_zoomMarker1.y, x,y); //angle between bottom markerand DSLR
rightCornerAngle = point_direction(o_zoomMarker2.x, o_zoomMarker2.y, x,y); //top marker ''

leftCornerX = lengthdir_x(zoomLength, leftCornerAngle)+x; //adding corner is at zoomlength and direction
leftCornerY = lengthdir_y(zoomLength, leftCornerAngle)+y;

rightCornerX = lengthdir_x(zoomLength, rightCornerAngle)+x;
rightCornerY = lengthdir_y(zoomLength, rightCornerAngle)+y;

//change zoomlength with zoom
orbitRatio = orbit/o_zoomMarker1.orbit
zoomLength = (orbitRatio)*30		

// taking a picture
	snap = keyboard_check_pressed(ord("V"))
	
	if (snap)
	{		
		
		if instance_exists(currentFlash)
		{
			instance_destroy(currentFlash)
			
		}	
		audio_play_sound(snd_cameraClick, 5, 0);
		flashLayer = layer_create(-10, "Flash"); //create a layer on top
		currentFlash = instance_create_layer(    //spawn flash object
		(x-(sprite_get_width(spr_flash)/2)),
		(y-(sprite_get_height(spr_flash)/2)),
		flashLayer,
		o_flash);
		
		
	}	
	if (keyActivate) cameraState = lasermode
}

function lasermode(){
	orbit = 6 ;

	


//set orbit left or right. press shift for quick
if (keyLeft)
	{
		oSpeed = 0.75;	
	}

if (keyRight)
	{
		oSpeed = -0.75;	
	} 
	
if ((keyRun) && (keyLeft)) or ((keyLeft) && (keyRun))
	{
		oSpeed = 3;	
	}


if ((keyRun) && (keyRight)) or ((keyRight) && (keyRun))
	{
		oSpeed = -3;	
	}

angle += oSpeed;
if (angle >= 360)
	{
	angle -=360	;
	}

x = lengthdir_x(orbit, angle ) + o_boyo.x							//actual movement
y = lengthdir_y(orbit, angle ) + (o_boyo.y -DSLRYOffset)

oSpeed =0; // only moves while pressed
	
	// line direction calculation
	lineBeginX = x;
	lineBeginY = y;
	
	lineDir = point_direction(laserMarker.x, laserMarker.y, x,y);
	lineEndX = lengthdir_x(lineLength, lineDir)+x;
	lineEndY = lengthdir_y(lineLength, lineDir)+y;
	lineMarkerEndX = lengthdir_x(lineLength*1.1, (lineDir))+x;
	lineMarkerEndY = lengthdir_y(lineLength*1.1, (lineDir))+y;
	
	if (!instance_exists(reflectionMarkerLine))
	{
	reflectionMarkerLine = instance_create_layer(lineMarkerEndX, lineMarkerEndY,layer, o_reflectionMarkerLine);
	}
	
	
	reflectorHit = collision_line(lineBeginX, lineBeginY, lineEndX, lineEndY, par_reflector, false, false) // stores instance of collision with line
	if (reflectorHit != noone)		// if any reflector is getting hit
	{
		newLength = point_distance(lineBeginX, lineBeginY, reflectorHit.x, reflectorHit.y);				// laser stops at reflector
		lineLength = newLength;
		
		
			with (reflectorHit)																			//with object getting hit
			{
					laserCollision = true;
					
			} 
		
		
		
		
	}
	else 
	{
		lineLength = 1000;
			with (reflectorHit)
			{
				laserCollision = false;	
			}
	}
	
	if (keyActivate) cameraState = pictureMode;
	
}



function dslrboyodirection(){
		
		cameraAim = point_direction(o_boyo.x, o_boyo.y - DSLRYOffset, x,y);

	var _boyoLooking = 1;
	if (cameraAim <= 0) && (cameraAim >=-45)
		{
			 _boyoLooking = 1;
		}
		if (cameraAim >= 0) && (cameraAim <=45)
		{
			 _boyoLooking = 1;
		}
	if (cameraAim >= 45) && (cameraAim <135)
		{
			 _boyoLooking = 2;
		}
		if (cameraAim >= 135) && (cameraAim <225)
		{
			 _boyoLooking = 3;
		}
	if (cameraAim >= 225) && (cameraAim <=315)
		{
			_boyoLooking = 4;
		}
	if _boyoLooking == false _boyoLooking=1;

with (o_boyo)
	{
		switch (_boyoLooking)	
		{
			case 1:
				image_index = 0;
				break;
			case 2:
				image_index = 1;
				break;
			case 3:
				image_index = 2;
				break;
			case 4:
				image_index=3;
				break;

		}
	
	}
		
}
	
	
	
	
	
	
