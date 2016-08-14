///AdjustBaseEnergy(energyAddend)
var energyAddend = argument0;

obj_baseManager.energy += energyAddend;
if(obj_baseManager.energy < obj_baseManager.energyMin)
{ obj_baseManager.energy = obj_baseManager.energyMin; }
else if(obj_baseManager.energy > obj_baseManager.energyMax)
{ obj_baseManager.energy = obj_baseManager.energyMax; }
