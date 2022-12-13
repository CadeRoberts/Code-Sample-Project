
function PlayerStateFree(){

//movement
	if (keyRun) speedWalk = speedRun else speedWalk = 1
	hSpeed = lengthdir_x(inputMagnitude*speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude*speedWalk, inputDirection);


if (keyCycle)
{
	cycler = instance_create_layer(0,0,layer, o_polaroidCycle)
	state = playerstatelocked
	
	
}




	PlayerCollision();

	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude !=0)
	{
	
	direction = inputDirection
	sprite_index = spriteWalk

	}else sprite_index = spriteIdle
	if (_oldSprite != sprite_index) localFrame = 0;


	//updating image index
	PlayerAnimateSprite();
	
		//footsteps

			//are we on the walking animation?, pick a random step sound on the right image indices
				if(sprite_index == s_boyoWalk) walkSprite = true
		
				randomStepSound = choose(snd_footstep1, snd_footstep2)
				audio_sound_gain(randomStepSound,0.1,0);
				audio_sound_gain(randomStepSound, 0.03, 70)
				var _groundContact
		
				if ((image_index mod 4) == 0 && hSpeed != 0 ) _groundContact = true else _groundContact = false
	
				if (walkSprite ==true)
				{
					if( _groundContact ) audio_play_sound(randomStepSound, 1, 0)
				}

	//activate key logic
	if (keyActivate)
	{
			// 1.check for an entity to activate
			//2. if there is nothing, or something with no script, roll
			//3. otherwise, there is something with a script and it has a script
			//4. if the thing we activate and it is an npc, make it face us.
			
				//1. 
			var _activateX = lengthdir_x(10, direction);
			var _activateY = lengthdir_y(10, direction);
			activate = instance_position(x+_activateX, y -8 + _activateY, par_entity);
			
			//2. 
			if (activate == noone || activate.entityActivateScript == -1)
			{
				state = PlayerStateRoll	
				moveDistanceRemaining = distanceRoll

			} 
			else //3.
			{
				script_execute_array(activate.entityActivateScript, activate.entityActivateArgs);
				
				if(activate.entityNPC)
				{
					with(activate)
					{
						direction = point_direction(x, y, other.x, other.y);
						image_index = CARDINAL_DIR;
					}
					
					
				}
				
				
			}

	
	
	}

	if (keyDSLR) //toggling DSLR
	{
		DSLRToggleState = !DSLRToggleState
		
		
	}
	if DSLRToggleState
	{
	state = PlayerStateDSLR	

	}

}

function PlayerStateRoll(){
	
	//movement
	hSpeed = lengthdir_x(speedRoll, direction);
	vSpeed = lengthdir_y(speedRoll, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll);
	var _collided = PlayerCollision();
	
// update sprite
sprite_index = spriteRoll;
var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR*_totalFrames) + min(((1-(moveDistanceRemaining / distanceRoll)) * _totalFrames), _totalFrames -1);
	// change state
	if (moveDistanceRemaining <= 0 )
	{
		state = PlayerStateFree;	
	}
}

function playerstatelocked(){
	
//do nothing	
	
}




function PlayerStateDSLR(){
	sprite_index = spriteCam;
	
	
	newAnimalLayer = layer_create(-5, "Animal");    //layer for animals to move to so they arent dimmed
												// they are still flashed though bc flash is -10z
	sandPiper = instance_nearest(x,y,o_crab);
	if instance_exists(sandPiper)
	{
	layer_add_instance(newAnimalLayer, sandPiper)
	}
	
	layer_set_visible("Dim", true)			//dim everything
	if instance_exists(o_DSLR) = false      //is there somehow a DSLR already
	
	{
		currentDSLR = instance_create_layer(o_boyo.x, (o_boyo.y-DSLRYOffset), newAnimalLayer, o_DSLR) 
	}
	if (keyDSLR)    //exit the state if pressed
	{
			DSLRToggleState = !DSLRToggleState
	}


	if !DSLRToggleState							//var is true until pressed once. this is the cleanup
	{
		state = PlayerStateFree;
		instance_destroy(o_DSLR.zoomMarker1);
		instance_destroy(o_DSLR.zoomMarker2);
		instance_destroy(o_DSLR.laserMarker);
		instance_destroy(o_DSLR.reflectionMarkerLine);
		if(instance_exists(o_reflectionMarkerPlane))
			{	
				instance_destroy(o_reflectionMarkerPlane);
			}

		layer_set_visible("Dim",false);						//get rid of dim layer
		instance_destroy(o_DSLR.currentFlash);
		layer_destroy(o_DSLR.flashLayer);
		instance_destroy(o_DSLR);
		if instance_exists(o_sandPiper)
		{
			o_sandPiper.currentView = 0;


		} 
	}
}

function PlayerStateTransition(){

PlayerCollision();
PlayerAnimateSprite();		// player image index
	
}