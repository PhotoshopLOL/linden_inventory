

local binModels = {  --- MODEL, SLOTS
    {'prop_dumpster_02a', 20 },
    {'prop_dumpster_4b', 20 },
    {'prop_dumpster_4a', 20 },
    {'prop_dumpster_01a', 20},
    {'prop_dumpster_02b', 20 },
    {'prop_dumpster_02a', 20 },
    --[[
    {'prop_bin_07b', 5},
    {'prop_bin_01a', 5},
    {'prop_recyclebin_04_a', 5},
    {'prop_recyclebin_04_b', 5},
    {'prop_bin_08a', 5},
    ]]
}

local models = {}
local hashids = nil
Dumpsters = {}

Citizen.CreateThread(function()

    for k,v in pairs(binModels) do
        table.insert(models, GetHashKey(v[1]))
    end

    exports['bt-target']:AddTargetModel(models, {
        options = {
            {
                event = "linden-inventory:OpenDumpster",
                icon = 'fas fa-dumpster',
                label = 'Open Dumpster',
            }
        },
        job = {'all'},
        distance = 2.5
    })

end)

TriggerServerEvent('linden-inventory:getDumpsters')

RegisterNetEvent('linden-inventory:syncDumpsters')
AddEventHandler('linden-inventory:syncDumpsters', function(result)
    if result == nil then return end
    Dumpsters = result
    for _,y in pairs(Dumpsters) do
        for k,v in pairs(binModels) do
            local obj = GetClosestObjectOfType(y.coords, 2.5, GetHashKey(v[1]), false, 0 , 0)
            local dist = Vdist(y.coords, GetEntityCoords(obj))
            if dist < 2.5 then
                FreezeEntityPosition(obj, true)
            end
        end
    end
end)    


RegisterNetEvent('linden-inventory:OpenDumpster')
AddEventHandler('linden-inventory:OpenDumpster', function()

    local coords = GetEntityCoords(GetPlayerPed(-1))
    local binCoords = nil
    local binSlots = nil
    local obj = nil

    for k,v in pairs(binModels) do
        obj = GetClosestObjectOfType(coords, 2.5, GetHashKey(v[1]), false, 0 , 0)
        local dist = Vdist(coords, GetEntityCoords(obj))
        if dist < 1.5 then
            FreezeEntityPosition(obj, true)
            binCoords = GetEntityCoords(obj)
            binSlots = v[2]
            break
        end
    end

    if binCoords and NoDumpsters() then 
        FreezeEntityPosition(obj, true)
        TriggerServerEvent('linden-inventory:createDumpster', {coords = binCoords, slots = binSlots}) 
        return 
    elseif binCoords then
        for k,v in pairs(Dumpsters) do
            if v.coords == binCoords then
                print('opening nearby dumpster')
                FreezeEntityPosition(obj, true)
                OpenDumpster({
                    name = k,
                    slot = binSlots
                })
                return
            end
        end
        FreezeEntityPosition(obj, true)
        TriggerServerEvent('linden-inventory:createDumpster', {name = binName, coords = binCoords, slots = binSlots}) 
    else
        ESX.ShowNotification('No stash around to open.', 'error', 5000)
    end

end)

function NoDumpsters()
    for _,_ in pairs(Dumpsters) do
        return false
    end
    return true
end


RegisterNetEvent('linden_inventory:createDumpster')
AddEventHandler('linden_inventory:createDumpster', function(data, owner)
	Dumpsters[data.name] = data
	Dumpsters[data.name].coords = vector3(data.coords.x, data.coords.y,data.coords.z)

    if owner == GetPlayerServerId(PlayerId()) then
	    TriggerServerEvent('linden_inventory:openInventory', {type = 'dumpster', dumpster = data.name, slots = data.slots })
    end
end)

RegisterNetEvent('linden_inventory:destroyDumpster')
AddEventHandler('linden_inventory:destroyDumpster', function(id, owner)
	Dumpsters[id] = nil
end)


OpenDumpster = function(data)
    local playerPed = GetPlayerPed(-1)
	if data and not invOpen and CanOpenInventory() then
		TriggerServerEvent('linden_inventory:openInventory', {type = 'dumpster', dumpster = data.name, slots = data.slots })
	end
end

















