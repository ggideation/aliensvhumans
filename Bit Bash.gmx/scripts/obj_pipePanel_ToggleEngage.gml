///obj_device_ToggleEngage(objPipePanel, playerIndex)
var objPipePanel = argument0;
var playerIndex = argument1;

if(objPipePanel != noone)
{
    // engage
    if(objPipePanel.engagedPlayerIndex < 0)
    { objPipePanel.engagedPlayerIndex = playerIndex; }
    // disengage
    else if (objPipePanel.engagedPlayerIndex == playerIndex)
    { objPipePanel.engagedPlayerIndex = -1; }
}
