/// @description Idle Alarm
show_debug_message("Inside Idle Alarm");
npcSpeed = 0;

var idle = choose(0, 1);
var willMakeCall = chance(0.25);

if (!isCalling) {
	if (!idle) {
		npcSpeed = 0.5;
		_direction = random(360);
		currentState = NPC.MOVING;
	} else {
		if (willMakeCall) {
			currentState = NPC.CALLING;
		} else {
			currentState = NPC.IDLE;
		}
		
	}
}

if (currentState != NPC.CALLING) {
	alarm[0] = random_range(2, 4) * global.oneSecond;
}

