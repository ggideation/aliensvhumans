///FindFirstAvailableEquipment(controlType)
var controlType = argument0;

var equipmentArr;
equipmentArr[0] = obj_cannonBarrel;
equipmentArr[1] = obj_forcefield;

if(controlType == "navigation")
{
    for(i = 0; i < array_length_1d(equipmentArr); i++)
    {if(equipmentArr[i].engagedNavigationPlayerIndex == -1) return equipmentArr[i];}
    
    return noone;
}
else if(controlType == "activation")
{
    for(i = 0; i < array_length_1d(equipmentArr); i++)
    {if(equipmentArr[i].engagedActivationPlayerIndex == -1) return equipmentArr[i];}
    
    return noone;
}
else
{return noone;}
