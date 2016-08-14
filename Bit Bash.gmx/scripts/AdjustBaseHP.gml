///AdjustBaseHP(hpAddend)
var hpAddend = argument0;

obj_baseManager.hp += hpAddend;
if(obj_baseManager.hp < obj_baseManager.hpMin)
{
    obj_baseManager.hp = obj_baseManager.hpMin;
    // Game Over
}
else if(obj_baseManager.hp > obj_baseManager.hpMax)
{ obj_baseManager.hp = obj_baseManager.hpMax; }
