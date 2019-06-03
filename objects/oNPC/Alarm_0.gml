/// @description Idle Alarm
npcSpeed = 0;

var idle = choose(0, 1);
var willMakeCall = chance(0.25);

show_debug_message("Will make call?" + string(willMakeCall));

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

