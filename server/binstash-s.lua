
local esx = nil
Dumpsters = {}

TriggerEvent('esx:getSharedObject', function(obj) esx = obj end)


RegisterNetEvent('linden-inventory:getDumpsters')
AddEventHandler('linden-inventory:getDumpsters', function()
    local _source = source
    TriggerClientEvent('linden-inventory:syncDumpsters', _source, Dumpsters)

end)

RegisterNetEvent('linden-inventory:createDumpster')
AddEventHandler('linden-inventory:createDumpster', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    CreateNewDumpster(xPlayer, data)
end)

RandomDumpsterId = function()
	while true do
		local random = math.random(100000,999999)
		if not Dumpsters[random] then return random end
		Citizen.Wait(0)
	end
end

CreateNewDumpster = function(xPlayer, data)
	local playerPed = GetPlayerPed(xPlayer.source)
	local playerCoords = GetEntityCoords(playerPed)
	local invid = "Dumpster-" .. RandomDumpsterId()
	local invid2 = xPlayer.source
	Dumpsters[invid] = {
		name = invid,
		inventory = {},
		slots = data.slots,
		coords = data.coords,
		type = 'dumpster'
	}
    exports.discord_logs:log(xPlayer, false, 'has created ' .. invid, 'items')
    TriggerClientEvent('linden_inventory:createDumpster', -1, Dumpsters[invid], xPlayer.source)
end