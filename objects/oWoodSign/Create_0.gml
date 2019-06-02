/// @description 
depth = -y;
hasQuest = irandom(1);
questMark = noone;

image_speed = 0;
image_index = irandom(image_number);

if (hasQuest) {
	questMark = instance_create_layer(x, y - 16, "Effects", oQuestMark);
}