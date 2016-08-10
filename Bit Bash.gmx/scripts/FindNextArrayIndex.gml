///FindNextArrayIndex(arr, currentIndex, cycleForward)
var arr = argument0;
var currentIndex = argument1;
var cycleForward = argument2;

var arrLength = array_length_1d(arr);
if(cycleForward)
{
    if(currentIndex == (arrLength - 1)) return 0;
    else return (currentIndex + 1);
}
else
{
    if(currentIndex == 0) return (arrLength - 1);
    else return (currentIndex - 1);
}
return 0;
