/// @description 
acceleration = 0.7;
npcSpeed = 0;
directionFacing = 0;
isCalling = false;
maxCallDuration = global.oneSecond * 7;
curretnCallDuration = 0;

t = 0;
increment = 8;
amplitute = 2;

enum NPC {
	IDLE,
	MOVING,
	CALLING
}

currentState = NPC.IDLE;

// Set idle alarm
alarm[0] = random_range(0, 1) * global.oneSecond;
// Set trash alarm
alarm[2] = random_range(5, 7) * global.oneSecond;
