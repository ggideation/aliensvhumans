///FindNextAvailableEquipment(controlType)
var controlType = argument0;

if(controlType == "navigation" && obj_cannonBarrel.engagedNavigationPlayerIndex == -1)
{return obj_cannonBarrel;}
else if (controlType == "activation" && obj_cannonBarrel.engagedActivationPlayerIndex == -1)
{return obj_cannonBarrel;}
else
{return noone;}
