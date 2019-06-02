/// @description 
acceleration = 0.7;
npcSpeed = 0;
directionFacing = 0;
isCalling = false;
maxCallDuration = global.oneSecond * 2;
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

alarm[0] = random_range(0, 1) * global.oneSecond;
alarm[2] = random_range(4, 7) * global.oneSecond;
//alarm[1] = random_range(2, 3) * global.oneSecond;