//resize grid

var _dgrid = ds_depthGrid;
var _instanceNumber = instance_number(par_depthObject);
ds_grid_resize(_dgrid, 2, _instanceNumber);

// add instance info to grid
var _yy = 0; 
with(par_depthObject)
	{
		_dgrid[# 0,_yy] = id;
		_dgrid[# 1, _yy] = y;
	_yy +=1;
	
	}
	
//sort grid

ds_grid_sort(_dgrid, 1, true);

//loop thru and draw instances
var _inst;
_yy = 0;
repeat(_instanceNumber)
{
	//pull out an id
	 _inst = _dgrid[# 0,_yy];
	// draw itself
	with(_inst){
	event_perform(ev_draw,0);
		
	}
	_yy +=1
	
	
}