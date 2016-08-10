///ActivateAllDroneSpawnInfo()
for(i = 0; i < ds_list_size(obj_droneSpawner.droneSpawnInfoList); i++)
{
    obj_droneSpawner.droneSpawnInfoList[| i].alarm[0] = 
        obj_droneSpawner.droneSpawnInfoList[| i].spawnTimer;
}
