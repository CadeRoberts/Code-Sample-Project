arrowTimer = sin(time_source_units_seconds)


if o_boyo.keyCycle && (active == true)
{
	o_boyo.state	 = PlayerStateFree
	active = !active
	o_boyo.keyCycle = false;
	
}

if o_boyo.keyCycle active = !active

var _instanceCaught = 0;

var _roomBG = room;

switch _roomBG
{
	case r_home2:
	_roomBG = 3
	break;
	
	case Beach:
	_roomBG = 2
	break;
	
	default:
	_roomBG = 3
	break;
	
	
}

with (par_creature)  // storing exact frame's info from animal that was caught
{
	if caughtNow == true
	{
			var _creature = object_index
			var _sprite = sprite_index
			var _image = image_index
			var _background = _roomBG
			 _instanceCaught = id
			var _creatureWeight = o_polaroid.creatureWeight
			var _creatureHeight = o_polaroid.creatureHeight

	}
	
	
}


if instance_exists(_instanceCaught) && (_instanceCaught != 0)
{
	if firstCreature == true
	{
		firstCreature = false;
		// ds grid columns [ object, sprite, image index, BG]
		picsTaken = ds_grid_create(6, 1);
		picsTaken[# 0, 0] = _creature;
		picsTaken[# 1, 0] = _sprite;
		picsTaken[# 2, 0] = _image;
		picsTaken[# 3, 0] = _roomBG;
		picsTaken[# 4, 0] = _creatureWeight;
		picsTaken[# 5, 0] = _creatureHeight;
		picturesStored +=1;
	}
	else
	{ 
		picturesStored +=1;
		var _currentHeight = ds_grid_height(picsTaken);
		var _newHeight = _currentHeight +1;
		ds_grid_resize(picsTaken, 6, _newHeight);
		picsTaken[# 0, _currentHeight] = _creature;
		picsTaken[# 1, _currentHeight] = _sprite;
		picsTaken[# 2, _currentHeight] = _image;
		picsTaken[# 3, _currentHeight] = _background;
		picsTaken[# 4, _currentHeight] = _creatureWeight;
		picsTaken[# 5, _currentHeight] = _creatureHeight;
		picturesStored +=1;

	}

}
