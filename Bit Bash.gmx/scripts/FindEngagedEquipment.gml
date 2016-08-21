///FindEngagedEquipment(controlType, playerIndex)
var controlType = argument0;
var playerIndex = argument1;

var equipmentArr;
equipmentArr[0] = obj_cannonBarrel;
equipmentArr[1] = obj_forcefield;
equipmentArr[2] = obj_beacon;

if(controlType == "navigation")
{
    for(i = 0; i < array_length_1d(equipmentArr); i++)
    {if(equipmentArr[i].engagedNavigationPlayerIndex == playerIndex) return equipmentArr[i];}

    return noone;
    
    //if(obj_cannonBarrel.engagedNavigationPlayerIndex == playerIndex) return obj_cannonBarrel;
    //else if(obj_forcefield.engagedNavigationPlayerIndex == playerIndex) return obj_forcefield;
    //else if(obj_beacon.engagedNavigationPlayerIndex == playerIndex) return obj_beacon;
    //else return noone;
}
else if(controlType == "activation")
{
    for(i = 0; i < array_length_1d(equipmentArr); i++)
    {if(equipmentArr[i].engagedActivationPlayerIndex == playerIndex) return equipmentArr[i];}

    return noone;

    //if(obj_cannonBarrel.engagedActivationPlayerIndex == playerIndex) return obj_cannonBarrel;
    //else if(obj_forcefield.engagedActivationPlayerIndex == playerIndex) return obj_forcefield;
    //else if(obj_beacon.engagedActivationPlayerIndex == playerIndex) return obj_beacon;
    //else return noone;
}
else
{return noone;}
