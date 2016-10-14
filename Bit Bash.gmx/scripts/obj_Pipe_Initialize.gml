///obj_Pipe_Initialize(objPipe, objPipePanel, typeId)
var objPipe = argument0;
var objPipePanel = argument1;
var typeId = argument2;

if(objPipe != noone && objPipePanel != noone && typeId >= 0)
{
    // place pipe atop current pipe panel
    obj_Pipe_Place(objPipe, objPipePanel);
    
    // assign pipe type id
    obj_Pipe_SetType(objPipe, typeId);
    
    // if necessary, assign power flow direction (priority = Up -> Right -> Down)
    // up and right invalid = down
    if (objPipe.typeId == 4)
    { objPipe.powerFlowDirectionId = 2; }
    else if(objPipe.typeId == 1 || objPipe.typeId == 3 // up invalid = right
        || objPipe.typeId == 8)
    { objPipe.powerFlowDirectionId = 1; }
    else { objPipe.powerFlowDirectionId = 0; } // up valid = up
}
