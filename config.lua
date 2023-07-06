Config = {}

-- Configuration de la météo pour chaque zone
Config.Zones = {
    ["nord"] = {
        ["weather"] = "rain",
        ["forecast"] = {}
    },
    ["sud"] = {
        ["weather"] = "clear",
        ["forecast"] = {}
    },
    ["est"] = {
        ["weather"] = "clouds",
        ["forecast"] = {}
    },
    ["ouest"] = {
        ["weather"] = "rain",
        ["forecast"] = {}
    }
}

-- Types de météo valides
Config.ValidWeatherTypes = {
    ["clear"] = true,
    ["clouds"] = true,
    ["rain"] = true,
    ["thunder"] = true,
    ["snow"] = true
}

-- Intervalle de variation de la météo en minutes
Config.WeatherChangeInterval = 15 -- Changer la météo toutes les 15 minute

-- Prévisions météorologiques
Config.EnableWeatherForecast = true -- Activer les prévisions météorologiques

-- Durée des prévisions en minutes
Config.ForecastDuration = 1 -- Prévisions pour les 1 prochaines minutes

-- Icônes de météo pour chaque condition
Config.WeatherIcons = {
    ['clear'] = 'sun', -- Icône pour le ciel dégagé (soleil)
    ['rain'] = 'rain', -- Icône pour la pluie
    ['clouds'] = 'cloud', -- Icône pour les nuages
    -- Ajoutez ici d'autres conditions météorologiques et leurs icônes correspondantes
}

-- Couleurs de texte pour chaque condition météorologique
Config.WeatherTextColors = {
    ['clear'] = '#FFFF00', -- Couleur de texte pour le ciel dégagé (jaune)
    ['rain'] = '#0000FF', -- Couleur de texte pour la pluie (bleu)
    ['clouds'] = '#C0C0C0', -- Couleur de texte pour les nuages (gris)
    -- Ajoutez ici d'autres conditions météorologiques et leurs couleurs de texte correspondantes
}