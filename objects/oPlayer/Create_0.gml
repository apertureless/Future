/// @description Setup

if (!assertSingleton()) exit;

// Structs

enum STATE {
	IDLE,
	MOVE,
	PICKUP
}

enum DIR {
	RIGHT,
	UP,
	LEFT,
	DOWN
}


acceleration = 1.6;
image_speed = 0.3;
directionFacing = DIR.RIGHT;
currentState = STATE.IDLE;

#region Sprite Table
	#region Idle
spriteTable[STATE.IDLE, DIR.RIGHT] = s_player_idle_left;
spriteTable[STATE.IDLE, DIR.UP] = s_player_idle_left;
spriteTable[STATE.IDLE, DIR.LEFT] = s_player_idle_left;
spriteTable[STATE.IDLE, DIR.DOWN] = s_player_idle_left;
	#endregion
	
	#region Move 
spriteTable[STATE.MOVE, DIR.RIGHT] = s_player_walk_left;
spriteTable[STATE.MOVE, DIR.UP] = s_player_walk_left;
spriteTable[STATE.MOVE, DIR.LEFT] = s_player_walk_left;
spriteTable[STATE.MOVE, DIR.DOWN] = s_player_walk_left;
	#endregion
#endregion