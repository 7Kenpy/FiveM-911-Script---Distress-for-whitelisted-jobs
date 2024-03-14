fx_version 'cerulean'
game 'gta5'

author 'KentaFPS'
description 'A script for notifying emergency services'
version '1.0'

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

shared_script '@es_extended/imports.lua'

dependencies {
    'pNotify'
}