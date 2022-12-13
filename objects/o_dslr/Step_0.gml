// what keys are pressed
keyLeft = keyboard_check (vk_left) or keyboard_check (ord("A"));
keyRight = keyboard_check (vk_right) || keyboard_check (ord("D"));
keyUp = keyboard_check(vk_up)|| keyboard_check (ord("W"));
keyDown = keyboard_check(vk_down)||keyboard_check (ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyRun = keyboard_check (vk_shift)
keyDSLR = keyboard_check_pressed (ord("C"));
keySnap = keyboard_check_pressed(ord("V"));



if (firstFrame) <= 4 firstFrame+=1

if (! global.gamePaused)
	{
		script_execute(cameraState);
	
}




//switch boyo sprite with dslr direction
dslrboyodirection();




