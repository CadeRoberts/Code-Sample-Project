// holds all of the scripts for the bird object. Movement, chirps, flying away if you get too close
function birdstatefree(){
if segmentLength <=1
	{
			segmentLength = irandom_range(20, 50);					//behavior timer
			inputDirection = choose(0,45,90,135,180,225,270,315, 180);	//random direction
			if justMoved
			{
				inputMagnitude = 0;						//dont wanna move 2x back to back. too glitchy
				justMoved = false;
			}else inputMagnitude = irandom(1);							//50% moving or not
			speedWalk = random_range(1,2)
			if (irandom(2) ==0)										// above multuplied by another 50% moving or not. not moving most of the time
				inputMagnitude = 0
			if (inputMagnitude > 0 )								//if hes walking make the segment shorter
				{
					segmentLength -=5;	
				} else segmentLength +=15
			
				if(inputMagnitude = 1)				//dont wanna move 2x back to back. too glitchy
					{
						justMoved = true;
			
					}else justMoved = false;	
			randomize();
	}

segmentLength -=1
	
	if (justChirped <=0)
	{
		if (irandom(300) == 2)
		{
			justChirped = 10;
			
			whichChirp = choose(snd_sandPiperChirp1, snd_sandPiperChirp2);
			randomPitch = random_range(0.8, 1.3);
			audio_sound_pitch(whichChirp, randomPitch);
			audio_play_sound(whichChirp, 1, false);
		
		}
		randomize();
	}
justChirped -=1
justChirped = max(justChirped, 0)

	hSpeed = lengthdir_x(inputMagnitude*speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude*speedWalk, inputDirection);

	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude !=0)
	{
	
	direction = inputDirection
	sprite_index = spriteWalk;

	}else sprite_index = spriteIdle;
	if (_oldSprite != sprite_index) localFrame = 0;

PlayerAnimateSprite();
PlayerCollision();

//calc distance from player and if too close, swwitch state
currentDistance = point_distance(x,y,o_boyo.x,o_boyo.y);
if (currentDistance <= evadeDistance) ||  (caught == true)
{
	state = birdstateevade	
	directionFromPlayer = (point_direction(x,y,o_boyo.x, o_boyo.y) + 180); 
	evadeDirection = irandom_range(0, 360)
	
}

}

function birdstateevade(){
	///calc direction and pick a random range opposite to fly away in

inputDirection = evadeDirection;
inputMagnitude = 1;
speedWalk = 2;
depth = -50;
	
	
	hSpeed = lengthdir_x(inputMagnitude*speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude*speedWalk, inputDirection);


	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude !=0)
	{
	
	direction = inputDirection
	sprite_index = spriteFly;

	}else sprite_index = spriteIdle;
	if (_oldSprite != sprite_index) localFrame = 0;

	PlayerAnimateSprite();
x += hSpeed;
y += vSpeed;

	
}