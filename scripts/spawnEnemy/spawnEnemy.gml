// Randomly select spawnpoint
var numberOfSpawnPoints = instance_number(oSpawnPoint) - 1;
var spawnPoint = instance_find(oSpawnPoint, irandom(numberOfSpawnPoints));

// Randomly select enemy to spawn

var enemyType = choose(1, 2, 3, 4, 5);
var enemyObject = noone;

switch (enemyType) {
	case 1: 
		enemyObject = oScumbag;
		break;
	case 2: 
		enemyObject = oRocker;
		break;
	case 3: 
		enemyObject = oGuy;
		break;
	case 4: 
		enemyObject = oBlondGirl;
		break;
	case 5: 
		enemyObject = oRedHead;
		break;
}

instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", enemyObject);