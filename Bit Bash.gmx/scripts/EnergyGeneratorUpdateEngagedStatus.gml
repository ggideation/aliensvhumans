///EnergyGeneratorUpdateEngagedStatus()
// determine whether energy generator should be in engaged/disengaged state
var newEnergyGeneratorStatus = false;
var deviceAPlayerIndex = obj_energyGenerator.energyDeviceA.engagedPlayerIndex;
var deviceBPlayerIndex = obj_energyGenerator.energyDeviceB.engagedPlayerIndex;

if(deviceAPlayerIndex != -1 && deviceBPlayerIndex != -1)
{ newEnergyGeneratorStatus = true; }

// determine whether the energy generator's current state matches the target state
if(obj_energyGenerator.engaged != newEnergyGeneratorStatus)
{
    // generator will be newly engaged
    if(newEnergyGeneratorStatus)
    {
        // clear instruction queue
        ds_queue_clear(obj_energyGenerator.instructionQueue);
        
        // start instructional timer
        obj_energyGenerator.alarm[0] = obj_energyGenerator.instructionAlarmTimeLimit;
    }
    // generator will be newly disengaged
    else
    {
        // ensure that instructional timer is halted
        obj_energyGenerator.alarm[0] = -1;
    }
    
    // set generator statuses
    obj_energyGenerator.instructionalMode = true;
    obj_energyGenerator.engaged = newEnergyGeneratorStatus;
}
