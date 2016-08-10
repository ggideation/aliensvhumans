///obj_deviceEnergy_FeedbackAlert(objDeviceEnergy, targetButton)
var objDeviceEnergy = argument0;
var targetButton = argument1;

if(objDeviceEnergy != undefined && objDeviceEnergy != noone)
{
    var engagedPlayerIndex = objDeviceEnergy.engagedPlayerIndex;
    if(engagedPlayerIndex != -1)
    {
        // start player vibration feedback
        if(targetButton == obj_energyGenerator.commandButtonArr[0])
        { gamepad_set_vibration(engagedPlayerIndex, 1, 0); }
        else
        { gamepad_set_vibration(engagedPlayerIndex, 0, 1); }
        
        objDeviceEnergy.alarm[0] = objDeviceEnergy.alertAlarmTimeLimit;
    }
}
