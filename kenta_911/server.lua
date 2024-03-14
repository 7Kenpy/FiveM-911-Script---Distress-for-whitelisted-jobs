ESX = exports["es_extended"]:getSharedObject()

RegisterCommand('911pd', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    TriggerClientEvent('kenta_911:notifyPD', -1, playerName, playerCoords)
end, false)

RegisterCommand('911ems', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    TriggerClientEvent('kenta_911:notifyEMS', -1, playerName, playerCoords)
end, false)

RegisterCommand('911mech', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    TriggerClientEvent('kenta_911:notifyMech', -1, playerName, playerCoords)
end, false)
