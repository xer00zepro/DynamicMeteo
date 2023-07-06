resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Script de météo pour FiveM avec ESX'

version '1.0.0'

client_scripts {
    'client.lua',
    'config.lua'
}

server_scripts {
    'server.lua',
    'config.lua'
}

dependency 'es_extended'