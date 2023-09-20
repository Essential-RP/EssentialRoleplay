local weaponList = {
    -- PISTOLS
    [GetHashKey("WEAPON_PISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_HEAVYPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_COMBATPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_VINTAGEPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_PISTOL_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_RAYPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_CERAMICPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_NAVYREVOLVER")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_PISTOLXM3")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_STUNGUN")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_PISTOL50")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SNSPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SNSPISTOL_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_APPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_FLAREGUN")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MARKSMANPISTOL")] = { recoil = 1.0 },
    -- SMGS
    [GetHashKey("WEAPON_SMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MICROSMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SMG_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_ASSAULTSMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_COMBATPDW")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MACHINEPISTOL")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_MINISMG")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_RAYCARBINE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_TECPISTOL")] = { recoil = 1.0 },
    -- RIFLE
    [GetHashKey("WEAPON_ASSAULTRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_CARBINERIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_ADVANCEDRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SPECIALCARBINE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_BULLPUPRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_COMPACTRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_HEAVYRIFLE")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_TACTICALRIFLE")] = { recoil = 1.0 },
    -- ADDON GUNS
    [GetHashKey("WEAPON_762")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_M4")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_GLOCK18C")] = { recoil = 1.0 },
    [GetHashKey("WEAPON_SP45")] = { recoil = 1.0 },
}

local COMBAT = {
    recoil = function()
        while true do
            local ply = PlayerPedId()
            local wep = GetSelectedPedWeapon(ply)

            if IsPedArmed(ply, 6) then
                Wait(0)
            else
                Wait(125)
            end

            if wep ~= GetHashKey("WEAPON_SNOWBALL") and IsPedShooting(ply) then
                local GamePlayCam = GetFollowPedCamViewMode()
                local MovementSpeed = math.ceil(GetEntitySpeed(ply))

                if MovementSpeed > 69 then
                    MovementSpeed = 69
                end

                local group = GetWeapontypeGroup(wep)
                local p = GetGameplayCamRelativePitch()
                local cameraDistance = #(GetGameplayCamCoord() - GetEntityCoords(ply))
                local recoil = math.random(50, 75 + (math.ceil(MovementSpeed * 1.5))) / 100 -- Over recoil
                local inVehicle = DoesEntityExist(GetVehiclePedIsIn(ply))

                local weaponHash = GetSelectedPedWeapon(ply)
                local recoilMultiplier = weaponList[weaponHash].recoil or 1.0

                if cameraDistance < 5.3 then
                    cameraDistance = 1.5
                else
                    if cameraDistance < 8.0 then
                        cameraDistance = 4.0
                    else
                        cameraDistance = 7.0
                    end
                end

                local verticalMult = GetRandomIntInRange(0, 2) * 2.0 - 1.0 -- vertical recoil for in car
                local horizontalMult = GetRandomIntInRange(0, 4) * 4.0 - 1.0 -- Horizontal recoil for car

                local pitch, heading = GetGameplayCamRelativePitch(), GetGameplayCamRelativeHeading()
                pitch = pitch + (0.1 * verticalMult)
                heading = heading + (3.1 * horizontalMult)

                if inVehicle then
                    print("working")
                    if GamePlayCam == 4 then
                        print("working")
                        SetGameplayCamRelativeRotation(heading, pitch, 100.0)
                    end
                end

                if GamePlayCam == 4 then
                    recoil = recoil * 0.35
                else
                    recoil = recoil * recoilMultiplier
                end

                local rightleft = math.random(0, 1) 
                local h = GetGameplayCamRelativeHeading()
                local hf = math.random(10, 30 + MovementSpeed) / 100

                if rightleft == 0 then
                    SetGameplayCamRelativeHeading(h + hf)
                else
                    SetGameplayCamRelativeHeading(h - hf)
                end

                local set, shake = p + recoil, math.random(1, 100) / 100
                local vehicle = GetVehiclePedIsIn(ply, false)
                local class = GetVehicleClass(vehicle)
                local setbike = p + math.random(2, 5)
                local isBike = (class == 8 or class == 13)

                if isBike then
                    if math.random(1, 5) >= math.random(1, 5) then
                        SetGameplayCamRelativePitch(setbike, 1.0)
                    else
                        SetGameplayCamRelativePitch(setbike, 1.0)
                    end
                else
                    if math.random(1, 1) >= math.random(1, 1) then
                        SetGameplayCamRelativePitch(set, 1.0)
                    else
                        SetGameplayCamRelativePitch(set, 1.0)
                    end
                end
            end
        end
    end,

}

Citizen.CreateThread(function()
    COMBAT.recoil()
end)