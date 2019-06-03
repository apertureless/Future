/// @description Moving State

image_speed = 0.7;

moveEntity(_direction, npcSpeed);

if (alarm[1] < 0 && alarm[0] < 0) {
	alarm[0] = random_range(2, 4) * global.oneSecond;
}