local QBCore = exports['qb-core']:GetCoreObject()
local function TackleAnim()
    local ped = PlayerPedId()
    if not QBCore.Functions.GetPlayerData().metadata["ishandcuffed"] and not IsPedRagdoll(ped) then
        RequestAnimDict("swimming@first_person@diving")
        while not HasAnimDictLoaded("swimming@first_person@diving") do
            Wait(1)
        end
        if IsEntityPlayingAnim(ped, "swimming@first_person@diving", "dive_run_fwd_-45_loop", 3) then
            ClearPedTasksImmediately(ped)
        else
            TaskPlayAnim(ped, "swimming@first_person@diving", "dive_run_fwd_-45_loop" ,3.0, 3.0, -1, 49, 0, false, false, false)
            Wait(250)
            ClearPedTasksImmediately(ped)
            SetPedToRagdoll(ped, 150, 150, 0, 0, 0, 0)
        end
    end
end
local function Tackle()
    closestPlayer, distance = QBCore.Functions.GetClosestPlayer()
    local closestPlayerPed = GetPlayerPed(closestPlayer)
    if(distance ~= -1 and distance < 2) then
        TriggerServerEvent("tackle:server:TacklePlayer", GetPlayerServerId(closestPlayer))
        TackleAnim()
    end
end
RegisterKeyMapping('tackle', 'Tackle someone', 'keyboard', "G")
RegisterCommand("tackle", function()
    local ped = PlayerPedId()
    if not IsPedInAnyVehicle(ped, false) and GetEntitySpeed(ped) > 2.5 then
        Tackle()
    end
end)
RegisterNetEvent('tackle:client:GetTackled', function()
	SetPedToRagdoll(PlayerPedId(), math.random(3000, 4000), math.random(3000, 5000), 0, 0, 0, 0) 
	TimerEnabled = true
	Wait(1500)
	TimerEnabled = false
end)
