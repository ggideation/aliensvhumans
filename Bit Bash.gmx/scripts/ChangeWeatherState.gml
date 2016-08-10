///ChangeWeatherState(weatherState)
var weatherState = argument0;

if(obj_weather.weatherState != weatherState)
{
    // Destroy any existing particle emitter as necessary
    if(obj_weather.weatherState != 0)
    { part_emitter_destroy(obj_weather.weather_sys, obj_weather.weather_emit); }
    
    // Instantiate new particle emitter as necessary
    if(weatherState != 0)
    { InstantiateParticleEmitter(weatherState); }
    
    // Update global weather state
    obj_weather.weatherState = weatherState;
}
