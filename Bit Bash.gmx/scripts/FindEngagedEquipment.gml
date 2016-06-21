///FindEngagedEquipment(controlType, playerIndex)
var controlType = argument0;
var playerIndex = argument1;

if(controlType == "navigation" && obj_cannonBarrel.engagedNavigationPlayerIndex == playerIndex)
{return obj_cannonBarrel;}
else if (controlType == "activation" && obj_cannonBarrel.engagedActivationPlayerIndex == playerIndex)
{return obj_cannonBarrel;}
else
{return noone;}
