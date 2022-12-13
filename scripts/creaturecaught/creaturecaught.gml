// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function creaturecaught(){

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
	
	if (!instance_exists(o_polaroid))
		{
			polaroid = instance_create_layer(x,y, layer, o_polaroid);
			polaroid.whichCreature = object_index;
		}


	with (polaroid)
		{
			backgroundImage = _roomBG;
			animalCaught = _currentSprite;
			imageIndex = _currentImage;
			creatureWeight = _creatureWeight;
			creatureHeight = _creatureHeight;

		}
	
	

}



}