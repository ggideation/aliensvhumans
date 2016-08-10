///VacateAllDrones()
// notify the drone spawner that the night phase is pending completion
obj_droneSpawner.nightTimePhasePendingEnd = true;

// instruct each active drone to vacate the scene
for(i = 0; i < ds_list_size(obj_droneSpawner.activeBasicDroneList); i++)
{
    if(instance_exists(obj_droneSpawner.activeBasicDroneList[| i]))
    {
        with(obj_droneSpawner.activeBasicDroneList[| i]) { path_end(); }
        obj_droneSpawner.activeBasicDroneList[| i].movementPhase = 2;
    }
}
