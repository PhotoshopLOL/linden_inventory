

RegisterServerEvent('hsn:giveInventoryItem')
AddEventHandler('hsn:giveInventoryItem', function(player2, itemType, item, itemCount)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xPlayer2 = ESX.GetPlayerFromId(player2)

    if itemCount <= 0 then

        xPlayer.showNotification("~r~ Invalid amount.")

    elseif item.name == 'money' or item.name == 'black_money' then

        xPlayer.removeAccountMoney(item.name, itemCount)
        xPlayer2.addAccountMoney(item.name, itemCount)
    
        xPlayer.showNotification("You gave ~b~" .. itemCount .. 'x ~g~' ..  item.label .. '~w~ to ' .. xPlayer2.getName())
        xPlayer2.showNotification("You recieved ~b~" .. itemCount .. 'x ~g~' ..  item.label .. '~w~ from ' .. xPlayer2.getName())


    elseif xPlayer2.canCarryItem(item.name, itemCount) then

   
        if string.find(item.name, "WEAPON_") then
            xPlayer.showNotification("~r~ Giving weapons is not allowed. ~g~ Try dropping it.")
        else

            xPlayer.removeInventoryItem(item.name, itemCount)
            xPlayer2.addInventoryItem(item.name, itemCount)
    
            xPlayer.showNotification("You gave ~b~" .. itemCount .. 'x ~g~' ..  item.label .. '~w~ to ' .. xPlayer2.getName())
            xPlayer2.showNotification("You recieved ~b~" .. itemCount .. 'x ~g~' ..  item.label .. '~w~ from ' .. xPlayer2.getName())
            
        end
    
    else
        xPlayer.showNotification("~r~ " .. xPlayer2.getName() .. " has no inventory space left.")
        xPlayer2.showNotification(xPlayer.getName() .. " tried to give you ~b~" .. itemCount.. "x ~g~" .. item.label .. "~w~ but you do not have enough inventory space.")

    end
end)
