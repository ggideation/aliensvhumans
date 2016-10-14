///obj_Pipe_Place(objPipe, objPipePanel)
var objPipe = argument0;
var objPipePanel = argument1;

if(objPipe != undefined && objPipePanel != undefined)
{
    // associate pipe with pipe panel
    objPipe.pipePanel = objPipePanel;
    // associate pipe panel with pipe
    objPipePanel.pipe = objPipe;
    
    // place pipe in appropriate position
    objPipe.x = objPipePanel.x;
    objPipe.y = objPipePanel.y;
}
