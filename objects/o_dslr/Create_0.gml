orbit = 6;
oSpeed = 0;
angle = o_boyo.directionHold;
DSLRYOffset = 20;
snap = 0;
flashLayer = 0;
currentFlash = 0;
firstFrame = 0; // dumb debug thing where it was drawing upward triangle on first(?) frame. 2 frame timer
cameraAim = 0;
cameraState = pictureMode;
lineLength = 1000;
lineBeginX = 0;
lineBeginY = 0;

lineEndX = 0;
lineEndY = 0;
lineMarkerEndX = 0;
lineMarkerEndY = 0;
lineDir = 0;
reflectorHit = 0;
newLength = 0;
reflectionMarkerLine = 0;

zoomMarker1 = instance_create_layer(o_boyo.x, o_boyo.y - DSLRYOffset, layer, o_zoomMarker1);
zoomMarker2 = instance_create_layer(o_boyo.x, o_boyo.y - DSLRYOffset, layer, o_zoomMarker2);
laserMarker = instance_create_layer(o_boyo.x, o_boyo.y - DSLRYOffset, layer, o_laserMarker);


zoomLength = 50;
leftCornerAngle = 0;
leftCornerX =0;
leftCornerY = 0;
rightCornerAngle = 0;
rightCornerX = 0;
rightCornerY = 0;



with(zoomMarker1)
{
		orbit = ((o_DSLR.orbit)/2)+1
		lowerClamp = 0.5
		upperClamp = 4
		
	
}

with (zoomMarker2)
{
		orbit = ((o_DSLR.orbit)/2) +1
		lowerClamp = 0.5
		upperClamp = 4
	
}
with (zoomMarker2)
{
		orbit = ((o_DSLR.orbit)/2) +1
	
	
}
