//obj_equipment_ToggleEngage(objEquipment, controlType, playerIndex)
var objEquipment = argument0;
var controlType = argument1;
var playerIndex = argument2;

if(objEquipment != noone && controlType != noone)
{
    if(controlType == "navigation")
    {objEquipment.engagedNavigationPlayerIndex = playerIndex;}
    else if (controlType == "activation")
    {objEquipment.engagedActivationPlayerIndex = playerIndex;}
}
