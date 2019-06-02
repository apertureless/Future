/// @description 
acceleration = 0.7;
directionFacing = 0;

enum NPC {
	IDLE,
	MOVING,
	CALLING
}

currentState = NPC.IDLE;

alarm[0] = random_range(0, 1) * global.oneSecond;