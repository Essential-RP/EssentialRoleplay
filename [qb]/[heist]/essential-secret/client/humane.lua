local QBCore = exports['qb-core']:GetCoreObject()
local GotJob = false
local Finished = true
local labcoords1 = vector3(3536.97, 3669.4, 28.12)
local labcoords2 = vector3(3559.71, 3673.84, 28.12)
local CurrentCops = 0
local SecurityBypass = false
local HackingTime = Config.HackingTime*1000
local EmailTime = Config.EmailTime*1000
local npcspawned = false

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

Citizen.CreateThread(function()
    exports['qb-target']:SpawnPed({
        model = Config.LabBossModel,
        coords = Config.LabBossLocation, 
        minusOne = true, --may have to change this if your ped is in the ground
        freeze = true, 
        invincible = true, 
        blockevents = true,
        scenario = Config.LabBossScenario,
        target = { 
            options = {
                {type = "client",event = "essential-secret:LabRaid",icon = "fas fa-comment",label = "Start Lab Raid",},
                -- {type = "server",event = "essential-secret:RecievePaymentLab",icon = "fas fa-hand",label = "HandOver Research",item = { "lab-usb","lab-samples","lab-files",},},
            },
          distance = 2.5,
        },
    })
end)

Citizen.CreateThread(function()
    exports['qb-target']:SpawnPed({
        model = Config.LabBossModel2,
        coords = Config.LabBossLocation2, 
        minusOne = true, --may have to change this if your ped is in the ground
        freeze = true, 
        invincible = true, 
        blockevents = true,
        scenario = Config.LabBossScenario2,
        target = { 
            options = {
                -- {type = "client",event = "essential-secret:LabRaid",icon = "fas fa-comment",label = "Start Lab Raid",},
                {type = "server",event = "essential-secret:RecievePaymentLab",icon = "fas fa-hand",label = "HandOver Research",item = { "lab-usb","lab-samples","lab-files",},},
            },
          distance = 2.5,
        },
    })
end)

--Lab Raid Stuff --------------------------------------------------------------------------------------------------

RegisterNetEvent('essential-secret:LabRaid', function()
    if GotJob == false then
        TriggerEvent('animations:client:EmoteCommandStart', {"wait"})
            QBCore.Functions.Progressbar('pickup', 'Getting Job...', 5000, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                QBCore.Functions.Notify('You will be emailed shortly with the location', 'primary')
                if CurrentCops >= Config.MinimumPolice then
                    Wait(EmailTime)
                    if Config.PhoneScript == 'qb' then
                        TriggerServerEvent('qb-phone:server:sendNewMail', {sender = "Lugo Bervich",subject = "Bio Research...",
                            message = "Heres the location. You Need to hack the firewall through the computer in laboratory 1 and then download that research. <br/> i will email again when i see the firewall is down!" ,
                        })
                    elseif Config.PhoneScript == 'qs' then
                        TriggerServerEvent('qs-smartphone:server:sendNewMail', {sender = 'Lugo Bervich',subject = 'Bio Research...',
                            message = "Heres the location. You Need to hack the firewall through the computer in laboratory 1 and then download that research. <br/> i will email again when i see the firewall is down!",
                            button = {}
                        })
                    elseif Config.PhoneScript == 'road' then
                        TriggerServerEvent('roadphone:receiveMail', {sender = 'Lugo Bervich',subject = "Bio Research...",
                            message = "Heres the location. You Need to hack the firewall through the computer in laboratory 1 and then download that research. <br/> i will email again when i see the firewall is down!",
                            image = '/public/html/static/img/icons/app/mail.png',
                            button = {}
                        })
                    elseif Config.PhoneScript == 'gks' then
                        TriggerServerEvent('gksphone:NewMail', {sender = 'Lugo Bervich',image = '/html/static/img/icons/mail.png',subject = "Bio Research...",
                            message = "Heres the location. You Need to hack the firewall through the computer in laboratory 1 and then download that research. <br/> i will email again when i see the firewall is down!",
                            button = {}
                        })
                    end
                    SetNewWaypoint(labcoords1)
                    ExportLabTarget1()
                    ExportSecurityTarget()
                else
                    QBCore.Functions.Notify('Not enough police presence', 'error', 3000)
                end
            end)
        else
        QBCore.Functions.Notify('You Already Have a Job', 'error', 3000)
    end
end)

RegisterNetEvent('essential-secret:StartLabHack', function()
    if QBCore.Functions.HasItem(Config.HackItem) then
        TriggerEvent('animations:client:EmoteCommandStart', {"type"})
        QBCore.Functions.Progressbar('cnct_elect', 'Bypassing Firewall...', HackingTime, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
        end)
        Wait(HackingTime)
        TriggerEvent('animations:client:EmoteCommandStart', {"type"})
        exports['ps-ui']:Scrambler(function(success)
            if success then
                Wait(100)
                TriggerEvent('animations:client:EmoteCommandStart', {"type"})
                Wait(500)
                QBCore.Functions.Progressbar('po_usb', 'Downloading Research..', HackingTime, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
                end)
                Wait(HackingTime)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                if Config.PoliceAlertLab then
                    TriggerServerEvent('police:server:policeAlert', 'Break in at Humane Labs, Laboratory 1!')
                end
                TriggerServerEvent('essential-secret:LabHackDone')
                if SecurityBypass == false then
                    TriggerServerEvent('essential-secret:gatherlabnpc')
                end
                QBCore.Functions.Notify('You Successfully Downloaded the Research, Wait for New Email!', 'primary', 8000)
                Wait(7500)
                if Config.PhoneScript == 'qb' then
                    TriggerServerEvent('qb-phone:server:sendNewMail', {sender = "Lugo Bervich",subject = "Bio Research...",
                        message = "Great you did it! now head to the Cold Room and bring me some samples of their work and any files you see!" ,
                    })
                elseif Config.PhoneScript == 'qs' then
                    TriggerServerEvent('qs-smartphone:server:sendNewMail', {sender = 'Lugo Bervich',subject = 'Bio Research...',
                        message = "Great you did it! now head to the Cold Room and bring me some samples of their work and any files you see!",
                        button = {}
                    })
                elseif Config.PhoneScript == 'road' then
                    TriggerServerEvent('roadphone:receiveMail', {sender = 'Lugo Bervich',subject = "Bio Research...",
                        message = "Great you did it! now head to the Cold Room and bring me some samples of their work and any files you see!",
                        image = '/public/html/static/img/icons/app/mail.png',
                        button = {}
                    })
                elseif Config.PhoneScript == 'gks' then
                    TriggerServerEvent('gksphone:NewMail', {sender = 'Lugo Bervich',image = '/html/static/img/icons/mail.png',subject = "Bio Research...",
                        message = "Great you did it! now head to the Cold Room and bring me some samples of their work and any files you see!",
                        button = {}
                    })
                end
                RemoveLabTarget1()
                ExportLabTarget2()
            else
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                QBCore.Functions.Notify('You failed Hacking, try again', 'error', 5000)
                    if SecurityBypass == false then
                        TriggerServerEvent('essential-secret:gatherlabnpc')
                        QBCore.Functions.Notify('Guards Alerted!', 'error', 2000)
                    end
                end
            end, Config.LabHackType, Config.LabHackTime, 0)
        else
            QBCore.Functions.Notify('You dont have the hack device', 'error', 3000)
        end
end)

RegisterNetEvent('essential-secret:StartLabHack2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('cnct_elect', 'Grabbing Samples and Files...', HackingTime, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
    end)
    Wait(HackingTime)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    TriggerServerEvent('essential-secret:GrabSamples')
    if SecurityBypass == false then
        TriggerServerEvent('essential-secret:gatherlabnpc')
    end
    QBCore.Functions.Notify('You got everything, Get out of there!', 'primary', 8000)
    Wait(7500)
    if Config.PhoneScript == 'qb' then
        TriggerServerEvent('qb-phone:server:sendNewMail', {sender = "Lugo Bervich",subject = "Bio Research...",
            message = "Now Bring the Research, Samples and The Files To My Boss, He Is Located Near Dutch London Street And He Will Get You Hooked Up With What You Want!" ,
        })
    elseif Config.PhoneScript == 'qs' then
        TriggerServerEvent('qs-smartphone:server:sendNewMail', {sender = 'Lugo Bervich',subject = 'Bio Research...',
            message = "Now Bring the Research, Samples and Files back to me for your payment!",
            button = {}
        })
    elseif Config.PhoneScript == 'road' then
        TriggerServerEvent('roadphone:receiveMail', {sender = 'Lugo Bervich',subject = "Bio Research...",
            message = "Now Bring the Research, Samples and Files back to me for your payment!",
            image = '/public/html/static/img/icons/app/mail.png',
            button = {}
        })
    elseif Config.PhoneScript == 'gks' then
        TriggerServerEvent('gksphone:NewMail', {sender = 'Lugo Bervich',image = '/html/static/img/icons/mail.png',subject = "Bio Research...",
            message = "Now Bring the Research, Samples and Files back to me for your payment!",
            button = {}
        })
    end
    GotJob = false
    Finished = true
    SecurityBypass = false
    RemoveLabTarget2()
end)
  
RegisterNetEvent('essential-secret:BypassLabGuardAlarm', function()
    if QBCore.Functions.HasItem(Config.HackItem) then
        TriggerEvent('animations:client:EmoteCommandStart', {"type"})
        QBCore.Functions.Progressbar('cnct_elect', 'Bypassing Security Alarms...', HackingTime, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
        end)
        Wait(HackingTime)
        TriggerEvent('animations:client:EmoteCommandStart', {"type"})
        exports['ps-ui']:Scrambler(function(success)
            if success then
                Wait(100)
                TriggerEvent('animations:client:EmoteCommandStart', {"type"})
                Wait(500)
                QBCore.Functions.Progressbar('po_usb', 'Rerouting Alarm Checks..', HackingTime, false, true, {disableMovement = true,disableCarMovement = true,disableMouse = false,disableCombat = true,}, {}, {}, {}, function()
                end)
                Wait(HackingTime)
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                QBCore.Functions.Notify('You Successfully Disabled the alarm system, head on in', 'primary', 8000)
                SecurityBypass = true
                RemoveLabBypass()
            else
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                QBCore.Functions.Notify('You failed to bypass security alarms, careful in there', 'error', 5000)
                RemoveLabBypass()
                end
            end, Config.LabHackType, Config.BypassHackTime, 0)
        else
            QBCore.Functions.Notify('You dont have the hack device', 'error', 3000)
        end
end)

labsecurity = {
    ['labpatrol'] = {}
}

function loadModel(model)
    if type(model) == 'number' then
        model = model
    else
        model = GetHashKey(model)
    end
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
end

RegisterNetEvent('essential-secret:SpawnLabGuards', function()
    SpawnGuardsLab()
    TriggerServerEvent('essential-secret:ResetGuardsLab')
end)

function SpawnGuardsLab()
    local ped = PlayerPedId()
    local randomgun = Config.LabGuardWeapon[math.random(1, #Config.LabGuardWeapon)]

    SetPedRelationshipGroupHash(ped, `PLAYER`)
    AddRelationshipGroup('labpatrol')

    for k, v in pairs(Config['labsecurity']['labpatrol']) do
        loadModel(v['model'])
        labsecurity['labpatrol'][k] = CreatePed(26, GetHashKey(v['model']), v['coords'], v['heading'], true, true)
        NetworkRegisterEntityAsNetworked(labsecurity['labpatrol'][k])
        networkID = NetworkGetNetworkIdFromEntity(labsecurity['labpatrol'][k])
        SetNetworkIdCanMigrate(networkID, true)
        SetNetworkIdExistsOnAllMachines(networkID, true)
        SetPedRandomComponentVariation(labsecurity['labpatrol'][k], 0)
        SetPedRandomProps(labsecurity['labpatrol'][k])
        SetEntityAsMissionEntity(labsecurity['labpatrol'][k])
        SetEntityVisible(labsecurity['labpatrol'][k], true)
        SetPedRelationshipGroupHash(labsecurity['labpatrol'][k], `labpatrol`)
        SetPedAccuracy(labsecurity['labpatrol'][k], Config.LabGuardAccuracy)
        SetPedArmour(labsecurity['labpatrol'][k], 100)
        SetPedCanSwitchWeapon(labsecurity['labpatrol'][k], true)
        SetPedDropsWeaponsWhenDead(labsecurity['labpatrol'][k], false)
        SetPedFleeAttributes(labsecurity['labpatrol'][k], 0, false)
        GiveWeaponToPed(labsecurity['labpatrol'][k], randomgun, 999, false, false)
        TaskGoToEntity(labsecurity['labpatrol'][k], PlayerPedId(), -1, 1.0, 10.0, 1073741824.0, 0)
        local random = math.random(1, 2)
        if random == 2 then
            TaskGuardCurrentPosition(labsecurity['labpatrol'][k], 10.0, 10.0, 1)
        end
    end

    SetRelationshipBetweenGroups(0, `labpatrol`, `labpatrol`)
    SetRelationshipBetweenGroups(5, `labpatrol`, `PLAYER`)
    SetRelationshipBetweenGroups(5, `PLAYER`, `labpatrol`)
end

function ExportLabTarget1()
    exports['qb-target']:AddBoxZone("hack-lab1", labcoords1, 1, 1, {
        name="hack-lab1",
        heading=350,
        debugpoly = Config.DebugPoly,
    }, {
        options = {
            {type = "client",event = "essential-secret:StartLabHack",icon = "far fa-usb",label = "Hack Research Files",item = Config.HackItem,},
        },
        distance = 2.0
    })
end

function ExportLabTarget2()
    exports['qb-target']:AddBoxZone("hack-lab2", labcoords2, 3, 3, {
        name="hack-lab2",
        heading=170,
        debugpoly = Config.DebugPoly,
    }, {
        options = {
            {type = "client",event = "essential-secret:StartLabHack2",icon = "far fa-usb",label = "Steal Samples",},
        },
        distance = 2.0
    })
end 

function ExportSecurityTarget()
    exports['qb-target']:AddBoxZone("sec-target-bypass", vector3(3605.52, 3636.59, 41.34), 3, 3, {
        name="sec-target-bypass",
        heading=262,
        debugpoly = Config.DebugPoly,
    }, {
        options = {
            {type = "client",event = "essential-secret:BypassLabGuardAlarm",icon = "fas fa-shield",label = "Bypass Security(1 Shot)",item = Config.HackItem,},
        },
        distance = 2.0
    })
end

function RemoveLabTarget1()
    exports['qb-target']:RemoveZone("hack-lab1")
end

function RemoveLabTarget2()
    exports['qb-target']:RemoveZone("hack-lab2")
end

function RemoveLabBypass()
    exports['qb-target']:RemoveZone("sec-target-bypass")
end
