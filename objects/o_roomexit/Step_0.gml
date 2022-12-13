// room transition

if(instance_exists(o_boyo)) && (position_meeting(o_boyo.x, o_boyo.y, id))
{
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = o_boyo.direction;
	with(o_boyo) state = PlayerStateTransition;
	roomtransition(TRANS_TYPE.FADE, targetRoom);
	instance_destroy();

}