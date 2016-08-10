///InstantiateParticleEmitter(weatherState)
var weatherState = argument0;

if(weatherState == 1) // Rain
{
    // Create Emitter
    obj_weather.weather_emit = part_emitter_create(obj_weather.weather_sys);
    part_emitter_region(obj_weather.weather_sys, obj_weather.weather_emit,
        obj_camera.viewNightX - 400, obj_camera.viewNightX + obj_camera.viewNightWidth,
        obj_camera.viewNightY - 100, obj_camera.viewNightY - 100, ps_shape_line, ps_distr_linear);
    part_emitter_stream(obj_weather.weather_sys, obj_weather.weather_emit, obj_weather.partRain, 5);
}
