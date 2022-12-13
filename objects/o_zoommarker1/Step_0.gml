
// what keys are pressed
keyLeft = keyboard_check (vk_left) or keyboard_check (ord("A"));
keyRight = keyboard_check (vk_right) || keyboard_check (ord("D"));
keyUp = keyboard_check(vk_up)|| keyboard_check (ord("W"));
keyDown = keyboard_check(vk_down)||keyboard_check (ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyRun = keyboard_check (vk_shift)
keyDSLR = keyboard_check_pressed (ord("C"));



// random pitch for zoom
randomPitch = random_range(1.1, 2)


//rotate. holding shift moves faster
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

//changeposition relative to O_DSLR
if (keyDown)
	{	
		if (playedSound <=0) && (o_DSLR.cameraState == pictureMode)
		{
			playedSound = 50
			audio_sound_gain(snd_cameraZoom1, 0.8, 0);
			audio_sound_pitch(snd_cameraZoom1, randomPitch );
				audio_play_sound(snd_cameraZoom1, 5, 0);
			
		}
		orbit +=0.1;
	
	}

if (keyUp)
	{
		if (playedSound <=0) && (o_DSLR.cameraState == pictureMode)
		{
			playedSound = 50
			audio_sound_gain(snd_camerazoom2, 0.8, 0);
			audio_sound_pitch(snd_camerazoom2, randomPitch )
				audio_play_sound(snd_camerazoom2, 5, 0)
		}
		orbit -=0.1;
	
	}
	
playedSound -=1;

orbit = clamp(orbit, lowerClamp,upperClamp)

angle += oSpeed;
if (angle >= 360)
	{
	angle -=360	;
	}



x = lengthdir_x(orbit, angle ) + o_boyo.x
y = lengthdir_y(orbit, angle ) + (o_boyo.y -DSLRYOffset)




oSpeed =0;