
RegisterNUICallback(
    "GetNearPlayers",
    function(data, cb)
        local playerPed = PlayerPedId()
        local players, nearbyPlayer = ESX.Game.GetPlayersInArea(GetEntityCoords(playerPed), 2.0)
        local foundPlayers = false
        local elements = {}

        for i = 1, #players, 1 do
            if players[i] ~= PlayerId() then
                foundPlayers = true

                table.insert(
                    elements,
                    {
                        label = GetPlayerName(players[i]),
                        player = GetPlayerServerId(players[i])
                    }
                )
            end
        end

        --print(foundPlayers)

        if not foundPlayers then
            ESX.ShowNotification("~r~No players around to give.", true, true)
        else
            --print(json.encode(elements))
            SendNUIMessage(
                {
                    message = "nearPlayers",
                    players = elements,
                    item = data.item
                }
            )
        end

        cb("done")
end)


RegisterNUICallback(
    "GiveItem",
    function(data, cb)
        local playerPed = PlayerPedId()
        local players, nearbyPlayer = ESX.Game.GetPlayersInArea(GetEntityCoords(playerPed), 3.0)
        local foundPlayer = false
        for i = 1, #players, 1 do
            if players[i] ~= PlayerId() then
                if GetPlayerServerId(players[i]) == data.player then
                    foundPlayer = true
                end
            end
        end

        --print(json.encode(data))
        --print(data.number)

        if foundPlayer then

            TriggerServerEvent("hsn:giveInventoryItem", data.player, data.item.type, data.item, data.number)
            
        else
            ESX.ShowNotification("~r~Cannot give item.")
        end
        cb("ok")
    end
)