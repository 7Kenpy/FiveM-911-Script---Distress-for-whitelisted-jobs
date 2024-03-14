RegisterNetEvent('kenta_911:notifyPD')
AddEventHandler('kenta_911:notifyPD', function(playerName, playerCoords)
    -- Notify police job
    TriggerEvent('pNotify:SendNotification', {
        text = '911 call from ' .. playerName .. ': Police assistance needed.',
        type = 'info',
        timeout = 120000, -- 2 minutes in milliseconds
        layout = 'topRight'
    })

    -- Display blip on map for police
    local blip = AddBlipForCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    SetBlipSprite(blip, 1)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 1) -- Red
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("911 Call")
    EndTextCommandSetBlipName(blip)
end)

RegisterNetEvent('kenta_911:notifyEMS')
AddEventHandler('kenta_911:notifyEMS', function(playerName, playerCoords)
    -- Notify EMS job
    TriggerEvent('pNotify:SendNotification', {
        text = '911 call from ' .. playerName .. ': Medical assistance needed.',
        type = 'info',
        timeout = 120000, -- 2 minutes in milliseconds
        layout = 'topRight'
    })

    -- Display blip on map for EMS
    local blip = AddBlipForCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    SetBlipSprite(blip, 621)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 1) -- Red
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("911 Call")
    EndTextCommandSetBlipName(blip)
end)

RegisterNetEvent('kenta_911:notifyMech')
AddEventHandler('kenta_911:notifyMech', function(playerName, playerCoords)
    -- Notify mechanic job
    TriggerEvent('pNotify:SendNotification', {
        text = '911 call from ' .. playerName .. ': Mechanical assistance needed.',
        type = 'info',
        timeout = 120000, -- 2 minutes in milliseconds
        layout = 'topRight'
    })

    -- Display blip on map for mechanic
    local blip = AddBlipForCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    SetBlipSprite(blip, 792)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 5) -- Yellow
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("911 Call")
    EndTextCommandSetBlipName(blip)
end)
