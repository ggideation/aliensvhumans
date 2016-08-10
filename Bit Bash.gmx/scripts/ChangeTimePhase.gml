///ChangeTimePhase(timePhase)
var timePhase = argument0;

if(timePhase == 0) // Day
{
    // switch to daytime background layer
    background_index[0] = bg_day;
    
    // create sun
    instance_create(237, 446, obj_sun);
    
    // change weather status to Clear
    ChangeWeatherState(0);
    
    // begin zooming in
    obj_camera.zooming = true;
    obj_camera.zoomingOut = false;
    
    // determine drone spawn info
    InstantiateAllDroneSpawnInfo();
    
    // increment day count
    obj_weather.dayNumber++;
}
else if (timePhase == 1) // Night
{
    // switch to nighttime background layer
    background_index[0] = bg_night;
    
    // create moon
    instance_create(279, 446, obj_moon);
    
    // change weather status to Rain
    ChangeWeatherState(1);
    
    // begin zooming out
    obj_camera.zooming = true;
    obj_camera.zoomingOut = true;
    
    // activate drone spawn timers
    ActivateAllDroneSpawnInfo();
}

// set global time phase value
obj_weather.timePhase = timePhase;
