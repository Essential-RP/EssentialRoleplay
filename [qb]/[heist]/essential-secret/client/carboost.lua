local QBCore = exports['qb-core']:GetCoreObject()
local GotJob = false
local Finished = true
local GotJobA = false
local GotJobB = false
local GotJobC = false
local carmodel = nil
local location = nil
local CurrentCops = 0
local HackingTime = Config.HackingTime*1000
local EmailTime = Config.EmailTime*1000
local npcspawned = false

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

Citizen.CreateThread(function()
    exports['qb-target']:SpawnPed({
        model = Config.CarBossModel,
        coords = Config.CarBossLocation, 
        minusOne = true, --may have to change this if your ped is in the ground
        freeze = true, 
        invincible = true, 
        blockevents = true,
        scenario = Config.CarBossScenario,
        target = { 
            options = {
                {type = "client",event = "essential-secret:getJobA",icon = "fas fa-car",label = "Start Low-Range Job",},
                {type = "client",event = "essential-secret:getJobB",icon = "fas fa-car",label = "Start Mid-Range Job",},
                {type = "client",event = "essential-secret:getJobC",icon = "fas fa-car",label = "Start High-Range Job",},
            },
          distance = 2.5,
        },
    })
end)

--car heist Stuff -------------------------------------------------------------------------------------------------

RegisterNetEvent("essential-secret:getJobA", function()
    if not GotJob then
        if CurrentCops >= Config.MinimumPolice then
            carmodel = Config.VehicleTierA.BoostVehicles[math.random(1, #Config.VehicleTierA.BoostVehicles)]
            location = Config.CarHeistLocations.CarSpawn[math.random(1, #Config.CarHeistLocations.CarSpawn)]
            TriggerServerEvent('essential-secret:GiveTierAPrice')
            print("server event done")
            if Config.PhoneScript == 'qb' then
                TriggerServerEvent('qb-phone:server:sendNewMail', {sender = "Mr Lynch",subject = "Get This Car",
                    message = "Hey Man i got a small job for you. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship" ,
                })
            elseif Config.PhoneScript == 'qs' then
                TriggerServerEvent('qs-smartphone:server:sendNewMail', {sender = 'Mr Lynch',subject = 'Get This Car',
                    message = "Hey Man i got a small job for you. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    button = {}
                })
            elseif Config.PhoneScript == 'road' then
                TriggerServerEvent('roadphone:receiveMail', {sender = 'Mr Lynch',subject = "Get This Car",
                    message = "Hey Man i got a small job for you. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    image = '/public/html/static/img/icons/app/mail.png',
                    button = {}
                })
            elseif Config.PhoneScript == 'gks' then
                TriggerServerEvent('gksphone:NewMail', {sender = 'Mr Lynch',image = '/html/static/img/icons/mail.png',subject = "Get This Car",
                    message = "Hey Man i got a small job for you. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    button = {}
                })
            end
            GotJob = true
            GotJobA = true
            Finished = false
            QBCore.Functions.SpawnVehicle(carmodel.model, function(veh) end, location.coords, true)
        else
            QBCore.Functions.Notify('Not enough police presence', 'error', 7500)
        end
    else
        QBCore.Functions.Notify('You already have a Job', 'error', 7500)
    end
end)

RegisterNetEvent("essential-secret:getJobB", function()
    if not GotJob then
        if CurrentCops >= Config.MinimumPolice then
            carmodel = Config.VehicleTierB.BoostVehicles[math.random(1, #Config.VehicleTierB.BoostVehicles)]
            location = Config.CarHeistLocations.CarSpawn[math.random(1, #Config.CarHeistLocations.CarSpawn)]
            TriggerServerEvent('essential-secret:GiveTierBPrice')
            if Config.PhoneScript == 'qb' then
                TriggerServerEvent('qb-phone:server:sendNewMail', {sender = "Mr Lynch",subject = "Get This Car",
                    message = "Hey got a nice motor for you today! here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship" ,
                })
            elseif Config.PhoneScript == 'qs' then
                TriggerServerEvent('qs-smartphone:server:sendNewMail', {sender = 'Mr Lynch',subject = 'Get This Car',
                    message = "Hey got a nice motor for you today! here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    button = {}
                })
            elseif Config.PhoneScript == 'road' then
                TriggerServerEvent('roadphone:receiveMail', {sender = 'Mr Lynch',subject = "Get This Car",
                    message = "Hey got a nice motor for you today! here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    image = '/public/html/static/img/icons/app/mail.png',
                    button = {}
                })
            elseif Config.PhoneScript == 'gks' then
                TriggerServerEvent('gksphone:NewMail', {sender = 'Mr Lynch',image = '/html/static/img/icons/mail.png',subject = "Get This Car",
                    message = "Hey got a nice motor for you today! here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    button = {}
                })
            end
            GotJob = true
            GotJobB = true
            Finished = false
            QBCore.Functions.SpawnVehicle(carmodel.model, function(veh) end, location.coords, true)
        else
            QBCore.Functions.Notify('Not enough police presence', 'error', 7500)
        end
    else
        QBCore.Functions.Notify('You already have a Job', 'error', 7500)
    end
end)

RegisterNetEvent("essential-secret:getJobC", function()
    if not GotJob then
        if CurrentCops >= Config.MinimumPolice then
            carmodel = Config.VehicleTierC.BoostVehicles[math.random(1, #Config.VehicleTierC.BoostVehicles)]
            location = Config.CarHeistLocations.CarSpawn[math.random(1, #Config.CarHeistLocations.CarSpawn)]
            TriggerServerEvent('essential-secret:GiveTierCPrice')
            if Config.PhoneScript == 'qb' then
                TriggerServerEvent('qb-phone:server:sendNewMail', {sender = "Mr Lynch",subject = "Get This Car",
                    message = "Hey i got a real pretty ride for you today. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship" ,
                })
            elseif Config.PhoneScript == 'qs' then
                TriggerServerEvent('qs-smartphone:server:sendNewMail', {sender = 'Mr Lynch',subject = 'Get This Car',
                    message = "Hey i got a real pretty ride for you today. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    button = {}
                })
            elseif Config.PhoneScript == 'road' then
                TriggerServerEvent('roadphone:receiveMail', {sender = 'Mr Lynch',subject = "Get This Car",
                    message = "Hey i got a real pretty ride for you today. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    image = '/public/html/static/img/icons/app/mail.png',
                    button = {}
                })
            elseif Config.PhoneScript == 'gks' then
                TriggerServerEvent('gksphone:NewMail', {sender = 'Mr Lynch',image = '/html/static/img/icons/mail.png',subject = "Get This Car",
                    message = "Hey i got a real pretty ride for you today. here are the details. <br/> Location: <br/> "..location.name.."<br/> Car Model: <br/> "..carmodel.name.."<br/> And Bring it back to the crane here to load onto the ship",
                    button = {}
                })
            end
            GotJob = true
            GotJobC = true
            Finished = false
            QBCore.Functions.SpawnVehicle(carmodel.model, function(veh) end, location.coords, true)
        else
            QBCore.Functions.Notify('Not enough police presence', 'error', 7500)
        end
    else
        QBCore.Functions.Notify('You already have a job', 'error', 7500)
    end
end)

RegisterNetEvent("essential-secret:DeliverVehicleA", function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
    if not Finished and GotJob and GotJobA then
        QBCore.Functions.Progressbar('delv', 'Loading Vehicle To Ship', Config.LoadingTime*1000, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
            TriggerServerEvent("essential-secret:getRewardA")
            Wait(0)
            DeleteVehicle(vehicle)
        QBCore.Functions.Notify('You Delivered The Vehicle', 'primary', 7500)
        GotJob = false
        GotJobA = false
        Finished = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        GotJob = false
        GotJobA = false
        Finished = true
        end)
     end
end)

RegisterNetEvent("essential-secret:DeliverVehicleB", function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
    if not Finished and GotJob and GotJobB then
        QBCore.Functions.Progressbar('delv', 'Loading Vehicle To Ship', Config.LoadingTime*1000, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
            TriggerServerEvent("essential-secret:getRewardB")
            Wait(0)
            DeleteVehicle(vehicle)
        QBCore.Functions.Notify('You Delivered The Vehicle', 'primary', 7500)
        GotJob = false
        GotJobB = false
        Finished = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        GotJob = false
        GotJobB = false
        Finished = true
        end)
     end
end)

RegisterNetEvent("essential-secret:DeliverVehicleC", function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
    if not Finished and GotJob and GotJobC then
        QBCore.Functions.Progressbar('delv', 'Loading Vehicle To Ship', Config.LoadingTime*1000, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
            TriggerServerEvent("essential-secret:getRewardC")
            Wait(0)
            DeleteVehicle(vehicle)
        QBCore.Functions.Notify('You Delivered The Vehicle', 'primary', 7500)
        GotJob = false
        GotJobC = false
        Finished = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
        GotJob = false
        GotJobC = false
        Finished = true
        end)
     end
end)

RegisterNetEvent("essential-secret:ScrapVehicle", function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
    if not Finished and GotJob then
        print("scrapcheck")
        TriggerServerEvent('police:server:policeAlert', 'Stolen Car Sighted')
        QBCore.Functions.Progressbar('delv', 'Scrapping Vehicle', Config.ScrapTime*1000, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
            TriggerServerEvent("essential-secret:GetScrapReward")
            Wait(0)
            DeleteVehicle(vehicle)
        QBCore.Functions.Notify('You Scrapped The Vehicle', 'primary', 7500)
            GotJob = false
            GotJobA = false
            GotJobB = false
            GotJobC = false
            Finished = true
        end, function()
        QBCore.Functions.Notify('Cancelled', 'error', 7500)
            GotJob = false
            GotJobA = false
            GotJobB = false
            GotJobC = false
            Finished = true
        end)
     end
end)

RegisterNetEvent('essential-secret:TierCheck', function()
    if not Finished and GotJobA then
        TriggerEvent('essential-secret:DeliverVehicleA')
    elseif not Finished and GotJobB then
        TriggerEvent('essential-secret:DeliverVehicleB')
    elseif not Finished and GotJobC then
        TriggerEvent('essential-secret:DeliverVehicleC')
    end
end)                             

Citizen.CreateThread(function()
    local inRange = false
    while true do
        Wait(0)
        local pos = GetEntityCoords(PlayerPedId())
        if #(pos - vector3(Config.CarHeistLocations["Deliver"].x, Config.CarHeistLocations["Deliver"].y, Config.CarHeistLocations["Deliver"].z)) < 10 then
            inRange = true
            if IsPedInAnyVehicle(PlayerPedId()) then
                DrawMarker(2, Config.CarHeistLocations["Deliver"].x, Config.CarHeistLocations["Deliver"].y, Config.CarHeistLocations["Deliver"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                if #(pos - vector3(Config.CarHeistLocations["Deliver"].x, Config.CarHeistLocations["Deliver"].y, Config.CarHeistLocations["Deliver"].z)) < 5 then
                    DrawText3D(Config.CarHeistLocations["Deliver"].x, Config.CarHeistLocations["Deliver"].y, Config.CarHeistLocations["Deliver"].z, "~g~E~w~ - Deliver Vehicle") 
                        if IsControlJustPressed(0, 38) then
                            if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
                                if IsVehicleValid(GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), true))) then
                                    TriggerEvent("essential-secret:TierCheck")
                                else
                                    QBCore.Functions.Notify('This is not the right vehicle', 'error', 7500)
                                end
                            else
                                QBCore.Functions.Notify('You must be the driver of the vehicle', 'error', 7500)
                            end
                        end
                end
            end
            if not inRange then
                Wait(1000)
            end
        end
    end
end)

Citizen.CreateThread(function()
    local inRange = false
    while true do
        Wait(0)
        local pos = GetEntityCoords(PlayerPedId())
        if #(pos - vector3(Config.CarHeistLocations["Scrap"].x, Config.CarHeistLocations["Scrap"].y, Config.CarHeistLocations["Scrap"].z)) < 10 then
            inRange = true
            if IsPedInAnyVehicle(PlayerPedId()) then
                DrawMarker(2, Config.CarHeistLocations["Scrap"].x, Config.CarHeistLocations["Scrap"].y, Config.CarHeistLocations["Scrap"].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 200, 200, 200, 222, false, false, false, true, false, false, false)
                if #(pos - vector3(Config.CarHeistLocations["Scrap"].x, Config.CarHeistLocations["Scrap"].y, Config.CarHeistLocations["Scrap"].z)) < 5 then
                    DrawText3D(Config.CarHeistLocations["Scrap"].x, Config.CarHeistLocations["Scrap"].y, Config.CarHeistLocations["Scrap"].z, "~g~E~w~ - Scrap Vehicle") 
                        if IsControlJustPressed(0, 38) then
                            if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
                                if IsVehicleValid(GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), true))) then
                                    TriggerEvent("essential-secret:ScrapVehicle")
                                else
                                    QBCore.Functions.Notify('This is not the right vehicle', 'error', 7500)
                                end
                            else
                                QBCore.Functions.Notify('You must be the driver of the vehicle', 'error', 7500)
                            end
                        end
                end
            end
            if not inRange then
                Wait(1000)
            end
        end
    end
end)

function IsVehicleValid(vehicleModel)
	local retval = false
	if carmodel ~= nil then
		if carmodel ~= nil and GetHashKey(carmodel.model) == vehicleModel then
			retval = true
		end
	end
	return retval
end

function DrawText3D(x, y, z, text)
    SetTextScale(0.3, 0.3)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 400
    DrawRect(0.0, 0.0 + 0.0110, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
