///obj_Pipe_SetPowerFlowDirection(objPipe, haxis, vaxis)
var objPipe = argument0;
var haxis = argument1;
var vaxis = argument2;

if(objPipe != noone)
{
    if(vaxis < 0 && objPipe.powerFlowDirectionPermittedArr[0]) // up
    { objPipe.powerFlowDirectionId = 0; }
    else if(vaxis > 0 && objPipe.powerFlowDirectionPermittedArr[2]) // down
    { objPipe.powerFlowDirectionId = 2; }
    else if(haxis < 0 && objPipe.powerFlowDirectionPermittedArr[3]) // left
    { objPipe.powerFlowDirectionId = 3; }
    else if(haxis > 0 && objPipe.powerFlowDirectionPermittedArr[1]) // right
    { objPipe.powerFlowDirectionId = 1; }
}
