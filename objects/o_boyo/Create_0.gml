state  = PlayerStateFree
lastState = state;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));


hSpeed = 0;
vSpeed = 0;
image_speed = 0;
speedWalk = 1;
speedRun = 1.5;
speedRoll = 3;
distanceRoll = 52;

spriteRoll = s_playerRoll;
spriteWalk = s_boyoWalk;
spriteCam = s_boyoCam;
spriteIdle = s_boyo;
localFrame = 0;
directionHold = 0;
walkSprite = false;
DSLRToggleState = 0;
DSLRYOffset = 15
currentDSLR = 0;
shadow = 0;

