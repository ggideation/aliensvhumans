///FindNextAvailableEquipment(controlType, objCurrentEquipment, cycleForward)
var controlType = argument0;
var objCurrentEquipment = argument1;
var cycleForward = argument2;

var equipmentArr;
equipmentArr[0] = obj_cannonBarrel;
equipmentArr[1] = obj_forcefield;
equipmentArr[2] = obj_beacon;
var equipmentArrLength = array_length_1d(equipmentArr);

// find index of current equipment
var startingEquipmentIndex = -1;
for(i = 0; i < equipmentArrLength; i++)
{
    if(objCurrentEquipment == equipmentArr[i])
    {
        startingEquipmentIndex = i;
        break;
    }
}

if(startingEquipmentIndex != -1)
{
    // find index of subsequent equipment
    var equipmentIndex = FindNextArrayIndex(equipmentArr, startingEquipmentIndex, cycleForward);
    
    // find and return next available equipment
    while(equipmentIndex != startingEquipmentIndex)
    {
        if(controlType == "navigation")
        {if(equipmentArr[equipmentIndex].engagedNavigationPlayerIndex == -1) return equipmentArr[equipmentIndex];}
        else if (controlType == "activation")
        {if(equipmentArr[equipmentIndex].engagedActivationPlayerIndex == -1) return equipmentArr[equipmentIndex];}
        
        equipmentIndex = FindNextArrayIndex(equipmentArr, equipmentIndex, cycleForward);
    }
}

return noone;
