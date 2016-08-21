//obj_equipment_ToggleEngage(objEquipment, controlType, playerIndex)
var objEquipment = argument0;
var controlType = argument1;
var playerIndex = argument2;

if(objEquipment != noone && controlType != noone)
{
    if(controlType == "navigation")
    {
        // Beacon - create/destroy target
        if(objEquipment.type == equipmentTypes.beacon)
        {
            // if necessary, create target
            if(playerIndex >= 0)
            {
                if(!instance_exists(obj_magneticTarget))
                { instance_create(objEquipment.x + 30, objEquipment.y - 30, obj_magneticTarget); }
            }
            
            // if necessary, set target player index
            if(instance_exists(obj_magneticTarget))
            { obj_magneticTarget.playerIndex = playerIndex; }
        }
        
        // set navigation player index
        objEquipment.engagedNavigationPlayerIndex = playerIndex;
    }
    else if (controlType == "activation")
    {
        // set activation player index
        objEquipment.engagedActivationPlayerIndex = playerIndex;
    }
}
