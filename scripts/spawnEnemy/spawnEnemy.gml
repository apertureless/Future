
var numberOfSpawnPoints = instance_number(oSpawnPoint) - 1;
var spawnPoint = instance_find(oSpawnPoint, irandom(numberOfSpawnPoints));
  
instance_create_layer(spawnPoint.x, spawnPoint.y, "Instances", oScumbag);