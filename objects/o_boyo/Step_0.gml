

// what keys are pressed
keyLeft = keyboard_check (vk_left) or keyboard_check (ord("A"));
keyRight = keyboard_check (vk_right) || keyboard_check (ord("D"));
keyUp = keyboard_check(vk_up)|| keyboard_check (ord("W"));
keyDown = keyboard_check(vk_down)||keyboard_check (ord("S"));
keyActivate = keyboard_check_pressed(ord("E"));
keyRun = keyboard_check (vk_shift)
keyDSLR= keyboard_check_pressed (ord("C"));
breakPointButton = keyboard_check_pressed(ord("B"));
keySnap = keyboard_check_pressed(ord("V"));
keyCycle = keyboard_check_pressed(ord("Q"));



if(breakPointButton)
	{
		timetodebug = true
	}

//direction
inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp !=0);


if (inputMagnitude != 0)
	{
		directionHold = inputDirection;
	}

if (! global.gamePaused)
	{
		script_execute(state);
	
}


