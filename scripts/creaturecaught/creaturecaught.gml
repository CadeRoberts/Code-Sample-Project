
function creaturecaught(){
 
// if a creature was just caught, initialize a journal entry/picture 
if (caughtNow == true)
{
	var _currentSprite = sprite_index;
	var _currentImage = image_index;
	var _creatureWeight = string(random_range(0.5, 10));
	var _creatureHeight = string(random_range(0.2, 1));
	var _roomBG = room
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
	
	if (!instance_exists(o_polaroid)) // create the polaroid object
		{
			polaroid = instance_create_layer(x,y, layer, o_polaroid);
			polaroid.whichCreature = object_index;
		}

	with (polaroid) // tell the polaroid object the information we just made up
		{
			backgroundImage = _roomBG;
			animalCaught = _currentSprite;
			imageIndex = _currentImage;
			creatureWeight = _creatureWeight;
			creatureHeight = _creatureHeight;

		}
}
}