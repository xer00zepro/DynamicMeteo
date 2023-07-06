ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Variation de la météo en temps réel
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.WeatherChangeInterval * 60000) -- Conversion en millisecondes

        local randomWeatherType = GetRandomWeatherType()
        ChangeWeather(randomWeatherType)
    end
end)

-- Événement pour récupérer la météo et les prévisions pour une zone
ESX.RegisterServerCallback('monscript:getWeather', function(source, cb, zone)
    cb(Config.Zones[zone].weather, Config.Zones[zone].forecast)
end)

-- Fonction pour changer la météo dans une zone
function ChangeWeather(weatherType)
    for zone, _ in pairs(Config.Zones) do
        Config.Zones[zone].weather = weatherType

        if Config.EnableWeatherForecast then
            GenerateWeatherForecast(zone)
        end
    end

    TriggerClientEvent('monscript:updateWeather', -1, Config.Zones)
end

-- Fonction pour générer les prévisions météorologiques pour une zone
function GenerateWeatherForecast(zone)
    Config.Zones[zone].forecast = {}

    if Config.ForecastDuration > 0 then
        for i = 1, Config.ForecastDuration do
            local hour = i
            local weatherType = GetRandomWeatherType()

            table.insert(Config.Zones[zone].forecast, { hour = hour, weather = weatherType })
        end
    end
end

-- Fonction pour obtenir un type de météo aléatoire
function GetRandomWeatherType()
    local weatherTypes = {}
    for weatherType, _ in pairs(Config.ValidWeatherTypes) do
        table.insert(weatherTypes, weatherType)
    end

    return weatherTypes[math.random(1, #weatherTypes)]
end
-- Fonction pour récupérer la météo dans chaque zone
ESX.RegisterServerCallback('monscript:getAllWeather', function(source, cb)
    cb(zoneWeather)
end)
