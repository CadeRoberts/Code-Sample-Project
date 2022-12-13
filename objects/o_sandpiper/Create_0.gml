caught = false;
caughtNow = false;
currentView = 0;

inputMagnitude = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 1;
spriteWalk = 0;
segmentLength = 10;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
image_speed = 0;
spriteIdle = spr_sandPiperStat;
spriteWalk = spr_sandpiper;
localFrame = 0;
inputDirection = 0;
inputMagnitude = 0;
currentDSLR = 0;
stepCount =1;
justMoved = 0;
spriteFly = spr_sandPiperFly;
justChirped = 0;


currentDistance = 0;
evadeDistance = irandom_range(50, 100);
visible = false;
state = birdstatefree;