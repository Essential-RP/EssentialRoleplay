local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("mask", function(source, item)
    TriggerClientEvent("essential-masks:client:MaskOn", source, item)
end)

RegisterNetEvent('essential-masks:server:MaskOnByCommand', function(mask, tex)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local mask = Player.Functions.GetItemByName("mask")
    if mask then
        TriggerClientEvent("essential-masks:client:MaskOn", source, mask)
    else
        TriggerClientEvent("QBCore:Notify", src, "You dont have a mask", "error")
    end
end)

RegisterNetEvent('essential-masks:server:GiveMaskItem', function(mask, tex)
    if mask == 0 then return end
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {drawableId = mask, textureId = tex}

    Player.Functions.AddItem("mask", 1, false, info)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["mask"], "add")
end)

RegisterNetEvent('essential-masks:server:RemoveMaskItem', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(item.name, 1, item.slot)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], "remove")
end)

