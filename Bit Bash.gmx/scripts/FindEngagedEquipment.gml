///FindEngagedEquipment(controlType, playerIndex)
var controlType = argument0;
var playerIndex = argument1;

if(controlType == "navigation")
{
    if(obj_cannonBarrel.engagedNavigationPlayerIndex == playerIndex) return obj_cannonBarrel;
    else if(obj_forcefield.engagedNavigationPlayerIndex == playerIndex) return obj_forcefield;
    else return noone;
}
else if(controlType == "activation")
{
    if(obj_cannonBarrel.engagedActivationPlayerIndex == playerIndex) return obj_cannonBarrel;
    else if(obj_forcefield.engagedActivationPlayerIndex == playerIndex) return obj_forcefield;
    else return noone;
}
else
{return noone;}
