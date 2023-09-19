local stress = 0

local PlayerData = QBCore.Functions.GetPlayerData()
-- if PlayerData.metadata and PlayerData.metadata['stress'] then
--   stress = stresslevel or PlayerData.metadata['stress']
-- end

-- if PlayerData.metadata and PlayerData.metadata['stress'] then
--   stress = PlayerData.metadata['stress']
-- else
--   -- Handle the case when metadata or 'stress' field is not available
--   stress = 0 -- Set a default value or handle it based on your requirements
-- end

-- -- Function to check for stress metadata
-- function CheckStressMetadata()
--   while true do
--     -- Check if the player data and metadata exist
--     if PlayerData and PlayerData.metadata and PlayerData.metadata['stress'] then
--       -- Retrieve the stress value
--       local stress = PlayerData.metadata['stress']
      
--       -- Do something with the stress value
--       -- Example: Print it to the console
--       print("Stress level:", stress)
      
--       -- Break the loop after retrieving the stress value
--       break
--     end
    
--     -- Wait for a short period before checking again
--     Citizen.Wait(100)
--   end
-- end

-- -- Call the function when the player joins the server
-- AddEventHandler('playerSpawned', function()
--   CheckStressMetadata()
-- end)

-- Harness Check

-- local function hasHarness(items)
--   local ped = PlayerPedId()
--   if not IsPedInAnyVehicle(ped, false) then return end

--   local _harness = false
--   if items then
--       for _, v in pairs(items) do
--           if v.name == 'harness' then
--               _harness = true
--           end
--       end
--   end

--   harness = _harness
-- end

-- CreateThread(function()
--   while true do
--       Wait(1000)

--       local ped = PlayerPedId()
--       if IsPedInAnyVehicle(ped, false) then
--           hasHarness(PlayerData.items)
--       end
--   end
-- end)

-- Stress Gain

--[[if not config.DisableStress then
  CreateThread(function() -- Speeding
      while true do
          if LocalPlayer.state.isLoggedIn then
              local ped = PlayerPedId()
              if IsPedInAnyVehicle(ped, false) then
                  local veh = GetVehiclePedIsIn(ped, false)
                  local vehClass = GetVehicleClass(veh)
                  local speed = GetEntitySpeed(veh) * speedMultiplier
                  local vehHash = GetEntityModel(veh)
                  if config.VehClassStress[tostring(vehClass)] and not config.WhitelistedVehicles[vehHash] then
                      local stressSpeed
                      if vehClass == 8 then -- Motorcycle exception for seatbelt
                          stressSpeed = config.MinimumSpeed
                      else
                          stressSpeed = seatbeltOn and config.MinimumSpeed or config.MinimumSpeedUnbuckled
                      end
                      if speed >= stressSpeed then
                          TriggerServerEvent('hud:server:GainStress', math.random(1, 3))
                      end
                  end
              end
          end
          Wait(10000)
      end
  end)

  CreateThread(function() -- Shooting
      while true do
          if LocalPlayer.state.isLoggedIn then
              local ped = PlayerPedId()
              local weapon = GetSelectedPedWeapon(ped)
              if weapon ~= `WEAPON_UNARMED` then
                  if IsPedShooting(ped) and not config.WhitelistedWeaponStress[weapon] then
                      if math.random() < config.StressChance then
                          TriggerServerEvent('hud:server:GainStress', math.random(1, 3))
                      end
                  end
              else
                  Wait(1000)
              end
          end
          Wait(0)
      end
  end)
end

-- Stress Screen Effects

local function GetBlurIntensity(stresslevel)
  for _, v in pairs(config.Intensity['blur']) do
      if stresslevel >= v.min and stresslevel <= v.max then
          return v.intensity
      end
  end
  return 1500
end

local function GetEffectInterval(stresslevel)
  for _, v in pairs(config.EffectInterval) do
      if stresslevel >= v.min and stresslevel <= v.max then
          return v.timeout
      end
  end
  return 60000
end

CreateThread(function()
  while true do
      local ped = PlayerPedId()
      local effectInterval = GetEffectInterval(stress)
      if stress >= 100 then
          local BlurIntensity = GetBlurIntensity(stress)
          local FallRepeat = math.random(2, 4)
          local RagdollTimeout = FallRepeat * 1750
          TriggerScreenblurFadeIn(1000.0)
          Wait(BlurIntensity)
          TriggerScreenblurFadeOut(1000.0)

          if not IsPedRagdoll(ped) and IsPedOnFoot(ped) and not IsPedSwimming(ped) then
              SetPedToRagdollWithFall(ped, RagdollTimeout, RagdollTimeout, 1, GetEntityForwardVector(ped), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
          end

          Wait(1000)
          for _ = 1, FallRepeat, 1 do
              Wait(750)
              DoScreenFadeOut(200)
              Wait(1000)
              DoScreenFadeIn(200)
              TriggerScreenblurFadeIn(1000.0)
              Wait(BlurIntensity)
              TriggerScreenblurFadeOut(1000.0)
          end
      elseif stress >= config.MinimumStress then
          local BlurIntensity = GetBlurIntensity(stress)
          TriggerScreenblurFadeIn(1000.0)
          Wait(BlurIntensity)
          TriggerScreenblurFadeOut(1000.0)
      end
      Wait(effectInterval)
  end
end)]]

config.stress
-- Stress
Config.WhitelistedWeaponArmed = { -- Disable showing armed icon from weapons in this table
    -- miscellaneous
    [`weapon_petrolcan`] = true,
    [`weapon_hazardcan`] = true,
    [`weapon_fireextinguisher`] = true,
    -- melee
    [`weapon_dagger`] = true,
    [`weapon_bat`] = true,
    [`weapon_bottle`] = true,
    [`weapon_crowbar`] = true,
    [`weapon_flashlight`] = true,
    [`weapon_golfclub`] = true,
    [`weapon_hammer`] = true,
    [`weapon_hatchet`] = true,
    [`weapon_knuckle`] = true,
    [`weapon_knife`] = true,
    [`weapon_machete`] = true,
    [`weapon_switchblade`] = true,
    [`weapon_nightstick`] = true,
    [`weapon_wrench`] = true,
    [`weapon_battleaxe`] = true,
    [`weapon_poolcue`] = true,
    [`weapon_briefcase`] = true,
    [`weapon_briefcase_02`] = true,
    [`weapon_garbagebag`] = true,
    [`weapon_handcuffs`] = true,
    [`weapon_bread`] = true,
    [`weapon_stone_hatchet`] = true,
    -- throwables
    [`weapon_grenade`] = true,
    [`weapon_bzgas`] = true,
    [`weapon_molotov`] = true,
    [`weapon_stickybomb`] = true,
    [`weapon_proxmine`] = true,
    [`weapon_snowball`] = true,
    [`weapon_pipebomb`] = true,
    [`weapon_ball`] = true,
    [`weapon_smokegrenade`] = true,
    [`weapon_flare`] = true
}

Config.WhitelistedWeaponStress = { -- Disable gaining stress from weapons in this table
    [`weapon_petrolcan`] = true,
    [`weapon_hazardcan`] = true,
    [`weapon_fireextinguisher`] = true
}

Config.VehClassStress = { -- Enable/Disable gaining stress from vehicle classes in this table
    ['0'] = true, -- Compacts
    ['1'] = true, -- Sedans
    ['2'] = false, -- SUVs
    ['3'] = true, -- Coupes
    ['4'] = true, -- Muscle
    ['5'] = true,  -- Sports Classics
    ['6'] = true, -- Sports
    ['7'] = true, -- Super
    ['8'] = false, -- Motorcycles
    ['9'] = true, -- Off Road
    ['10'] = true, -- Industrial
    ['11'] = true,  -- Utility
    ['12'] = true,  -- Vans
    ['13'] = false, -- Cycles
    ['14'] = false, -- Boats
    ['15'] = false, -- Helicopters
    ['16'] = false, -- Planes
    ['18'] = false, -- Emergency
    ['19'] = false, -- Military
    ['20'] = false, -- Commercial
    ['21'] = false  -- Trains
}

Config.WhitelistedVehicles = { -- Disable gaining stress from speeding in any vehicle in this table
    --[`adder`] = true
}

Config.WhitelistedJobs = { -- Disable stress completely for players with matching job or job type
    ['police'] = true,
    ['ambulance'] = true
}

Config.Intensity = {
    ["blur"] = {
        [1] = {
            min = 50,
            max = 60,
            intensity = 1500,
        },
        [2] = {
            min = 60,
            max = 70,
            intensity = 2000,
        },
        [3] = {
            min = 70,
            max = 80,
            intensity = 2500,
        },
        [4] = {
            min = 80,
            max = 90,
            intensity = 2700,
        },
        [5] = {
            min = 90,
            max = 100,
            intensity = 3000,
        },
    }
}

Config.EffectInterval = {
    [1] = {
        min = 50,
        max = 60,
        timeout = math.random(50000, 60000)
    },
    [2] = {
        min = 60,
        max = 70,
        timeout = math.random(40000, 50000)
    },
    [3] = {
        min = 70,
        max = 80,
        timeout = math.random(30000, 40000)
    },
    [4] = {
        min = 80,
        max = 90,
        timeout = math.random(20000, 30000)
    },
    [5] = {
        min = 90,
        max = 100,
        timeout = math.random(15000, 20000)
    }
}

RegisterNetEvent('hud:client:UpdateStress', function(newStress) -- Add this event with adding stress elsewhere
  stresslevel = newStress
end)

Config.DisableStress = false -- If true will disable stress completely for all players
Config.MinimumStress = 50 -- Minimum Stress Level For Screen Shaking
Config.MinimumSpeedUnbuckled = 100 -- Going Over This Speed Unbuckled Will Cause Stress
Config.MinimumSpeed = 100 -- Going Over This Speed While Buckled Will Cause Stress
Config.StressChance = 0.1 -- Default: 10% -- Percentage Stress Chance When Shooting (0-1)