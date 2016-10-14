///obj_Pipe_SetType(objPipe, typeId)
var objPipe = argument0;
var typeId = argument1;

if(objPipe != noone)
{
    // set pipe type
    objPipe.typeId = typeId;
    
    // set power flow direction restrictions
    // power flow Up not permitted
    if(objPipe.typeId == 1 || objPipe.typeId == 3 || objPipe.typeId == 4 || objPipe.typeId == 8)
    { objPipe.powerFlowDirectionPermittedArr[0] = false; }
    // power flow Right not permitted
    if (objPipe.typeId == 0 || objPipe.typeId == 4 || objPipe.typeId == 5 || objPipe.typeId == 9)
    { objPipe.powerFlowDirectionPermittedArr[1] = false; }
    // power flow Down not permitted
    if (objPipe.typeId == 1 || objPipe.typeId == 2 || objPipe.typeId == 5 || objPipe.typeId == 6)
    { objPipe.powerFlowDirectionPermittedArr[2] = false; }
    // power flow Left not permitted
    if (objPipe.typeId == 0 || objPipe.typeId == 2 || objPipe.typeId == 3 || objPipe.typeId == 7)
    { objPipe.powerFlowDirectionPermittedArr[3] = false; }
}
