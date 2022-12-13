// initialize and globals
randomize();

global.gamePaused = false;
global.textSpeed = 0.5;
global.camWidth = 0;
global.camHeight = 0;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;


room_goto(ROOM_START);
