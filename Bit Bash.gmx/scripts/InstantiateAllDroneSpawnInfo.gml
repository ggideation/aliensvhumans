///InstantiateAllDroneSpawnInfo()
// note that night phase is no longer pending completion
obj_droneSpawner.nightTimePhasePendingEnd = false;

// reset drone spawn wave/drone count properties
obj_droneSpawner.currentDroneSpawnWaveIndex = 0;
obj_droneSpawner.currentDroneSpawnIndex = 0;


// clean up any existing drone spawn info objects
for(i = 0; i < ds_list_size(obj_droneSpawner.droneSpawnInfoList); i++)
{
    if(instance_exists(obj_droneSpawner.droneSpawnInfoList[| i]))
    { with(obj_droneSpawner.droneSpawnInfoList[| i]) { instance_destroy(); } }
}
ds_list_clear(obj_droneSpawner.droneSpawnInfoList);


// clean up any existing active drone objects
for(i = 0; i < ds_list_size(obj_droneSpawner.activeBasicDroneList); i++)
{
    if(instance_exists(obj_droneSpawner.activeBasicDroneList[| i]))
    { with(obj_droneSpawner.activeBasicDroneList[| i]) { instance_destroy(); } }
}
ds_list_clear(obj_droneSpawner.activeBasicDroneList);


// populate drone spawn info list
while(obj_droneSpawner.currentDroneSpawnWaveIndex <= obj_droneSpawner.droneSpawnWaveMaxIndex)
{
    obj_droneSpawner.currentDroneSpawnIndex = 0;
    while(obj_droneSpawner.currentDroneSpawnIndex <= obj_droneSpawner.droneSpawnMaxIndex)
    {
        ds_list_add(obj_droneSpawner.droneSpawnInfoList, instance_create(0,0,obj_droneSpawnInfo));
        obj_droneSpawner.currentDroneSpawnIndex++;
    }
    obj_droneSpawner.currentDroneSpawnWaveIndex++;
}
