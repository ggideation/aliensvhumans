///obj_device_ToggleEngage(objDevice, playerIndex)
var objDevice = argument0;
var playerIndex = argument1;

var engagedPlayerIndex = -1;
if(objDevice != noone)
{
    // engage
    if(objDevice.engagedPlayerIndex < 0)
    {
        objDevice.engagedPlayerIndex = playerIndex;
        objDevice.sprite_index = objDevice.activatedSprite;
        engagedPlayerIndex = playerIndex;
    }
    // disengage (look at this if statement)
    else if (objDevice.engagedPlayerIndex == playerIndex)
    {
        if(objDevice.type == "energy")
        { gamepad_set_vibration(objDevice.engagedPlayerIndex, 0, 0); }
    
        objDevice.engagedPlayerIndex = -1;
        objDevice.sprite_index = objDevice.deactivatedSprite;
    }
    
    // engage/disengage equipment
    if(objDevice.type == "navigation" || objDevice.type == "activation")
    {
        var equipment = noone;
        if(engagedPlayerIndex >= 0)
        {equipment = FindFirstAvailableEquipment(objDevice.type);}
        else
        {equipment = FindEngagedEquipment(objDevice.type, playerIndex);}
        
        if(equipment != noone)
        {obj_equipment_ToggleEngage(equipment, objDevice.type, engagedPlayerIndex);}
    }
    // update engaged/disengaged status of energy generator
    else if (objDevice.type == "energy")
    { EnergyGeneratorUpdateEngagedStatus(); }
}
