local QBCore = exports['qb-core']:GetCoreObject()
local config = Config
local speedMultiplier = 2.23694 or 3.6
local nos = 0
local nitroActive = 0
local harness = 0
local hp = 100
local UnarmedHash = tonumber("2725352035")
local minimapEnabled = true

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      
      if not HUD.isOpen then
          DisplayRadar(false)
          SetRadarBigmapEnabled(false, false)
          minimapEnabled = false
      elseif not minimapEnabled then
          minimapEnabled = true
      end
  end
end)

Citizen.CreateThread(function()
  local minimap = RequestScaleformMovie("minimap")
  SetRadarBigmapEnabled(true, false)
  Citizen.Wait(0)
  SetRadarBigmapEnabled(false, false)

  while true do

      HudWeaponWheelIgnoreSelection()
      DisableControlAction(0, 37, true)

      if not onIsland then
          HideMinimapInteriorMapThisFrame()
      end
      if useDefaultMinimap then
        SetRadarZoom(1000) -- 1200
      else
        SetRadarZoom(1200) -- 1200
      end
      Citizen.Wait(0)
      BeginScaleformMovieMethod(minimap, "SETUP_HEALTH_ARMOUR")
      ScaleformMovieMethodAddParamInt(3)
      EndScaleformMovieMethod()
  end
end)

Citizen.CreateThread(
  function()
      local minimap = RequestScaleformMovie('minimap')
      while true do
          Wait(0)
          BeginScaleformMovieMethod(minimap, 'HIDE_SATNAV') 
          EndScaleformMovieMethod() 
      end
end)

local w = 0
HUD = {
    isOpen = false,
    healthHud = false,
    carHud = false,
    seatBelt = false,
    plyPed = false,
    plyVehicle = 0,
    fuelAlarm = false,
    voiceLevel = 2,
    radioActive = false,
    inventoryActive = true,
    blackbars = false,
    compassActive = false,
    carhudPos = 'right',
    carControls = false,
    sniper = false,
    HarnessVehicles = {},
    hungerLevel = 0,
    thirstLevel = 0,
    stresslevel = 0,

    --[[WEAPON_LIST = {
      -- Misc
      { WEAPON_HASH = '-1569615261', IMAGE_NAME = '' }, -- unarmed--
      -- Pistols
      { WEAPON_HASH = `weapon_pistol`, IMAGE_NAME = 'weapon_pistol.png' },--
      { WEAPON_HASH = `weapon_sp45`, IMAGE_NAME = 'weapon_sp45.png' },--
      { WEAPON_HASH = `weapon_pistol_mk2`, IMAGE_NAME = 'weapon_pistol_mk2.png' },--
      { WEAPON_HASH = `weapon_snspistol`, IMAGE_NAME = 'weapon_snspistol.png' },--
      { WEAPON_HASH = `weapon_snspistol_mk2`, IMAGE_NAME = 'weapon_snspistol_mk2.png' },--
      { WEAPON_HASH = `weapon_heavypistol`, IMAGE_NAME = 'weapon_heavypistol.png' },--
      { WEAPON_HASH = `weapon_combatpistol`, IMAGE_NAME = 'weapon_combatpistol.png' },--
      { WEAPON_HASH = `weapon_appistol`, IMAGE_NAME = 'weapon_appistol.png' },--
      { WEAPON_HASH = `weapon_pistol50`, IMAGE_NAME = 'weapon_pistol50.png' },--
      { WEAPON_HASH = `weapon_revolver`, IMAGE_NAME = 'weapon_revolver.png' },--
      { WEAPON_HASH = `weapon_revolver_mk2`, IMAGE_NAME = 'weapon_revolver_mk2.png' },--
      { WEAPON_HASH = `weapon_ceramicpistol`, IMAGE_NAME = 'weapon_ceramicpistol.png' },--
      { WEAPON_HASH = `weapon_revolver_mk2`, IMAGE_NAME = 'weapon_revolver_mk2.png' },--
      { WEAPON_HASH = `weapon_glock18c`, IMAGE_NAME = 'weapon_glock18c.png' },--
      -- Rifles
      { WEAPON_HASH = `weapon_carbinerifle_mk2`, IMAGE_NAME = 'weapon_carbinerifle_mk2.png' },--
      { WEAPON_HASH = `weapon_carbinerifle`, IMAGE_NAME = 'weapon_carbinerifle.png' },--
      { WEAPON_HASH = `weapon_tacticalrifle`, IMAGE_NAME = 'weapon_tacticalrifle.png' },--
      { WEAPON_HASH = `weapon_mk18`, IMAGE_NAME = 'weapon_mk18.png' },--
      { WEAPON_HASH = `weapon_assaultrifle`, IMAGE_NAME = 'weapon_assaultrifle.png' },--
      { WEAPON_HASH = `weapon_heavyrifle`, IMAGE_NAME = 'weapon_heavyrifle.png' },--
      { WEAPON_HASH = `weapon_specialcarbine`, IMAGE_NAME = 'weapon_specialcarbine.png' },--
      -- Smgs
      { WEAPON_HASH = `weapon_microsmg`, IMAGE_NAME = 'weapon_microsmg.png' },--
      { WEAPON_HASH = `weapon_mpx`, IMAGE_NAME = 'weapon_mpx.png' },--
      -- Heavy weapons
  
  },]]

    ToggleNUI = function(self, open)

        self.isOpen = open
        SendReactMessage('setVisible', open)
        DisplayRadar(open)

    end,

    GetMinimapPosition = function(self)

        local minimap = {}
    
        local resX, resY = GetActiveScreenResolution()
    
        local aspectRatio = GetAspectRatio()
    
        local scaleX = 1/resX
        local scaleY = 1/resY
    
        local minimapRawX, minimapRawY
    
        SetScriptGfxAlign(string.byte('L'), string.byte('B'))
    
        if IsBigmapActive() then
          minimapRawX, minimapRawY = GetScriptGfxPosition(-0.003975, 0.022 + (-0.460416666))
          minimap.width = scaleX*(resX/(2.52*aspectRatio))
          minimap.height = scaleY*(resY/(2.3374))
        else
          minimapRawX, minimapRawY = GetScriptGfxPosition(-0.0045, 0.002 + (-0.188888))
          minimap.width = scaleX*(resX/(4*aspectRatio))
          minimap.height = scaleY*(resY/(5.674))
        end
    
        ResetScriptGfxAlign()
    
        minimap.rightX = minimapRawX+minimap.width
        minimap.bottomY = minimapRawY+minimap.height
        
        return minimap
    
    end,

    UnarmedHash = `WEAPON_UNARMED`,

    StatusThread = function(self)
      CreateThread(function()
          while true do
              Wait(250)
  
              -- Get player and weapon information
              --local pedWeapon = GetSelectedPedWeapon(PlayerPedId())
              --local weaponImage = HUD:GetHudWeapon()
              --local weaponMaxAmmo = pedWeapon and GetAmmoInPedWeapon(PlayerPedId(), pedWeapon) or 0
              --local a, weaponClipAmmo = GetAmmoInClip(PlayerPedId(), pedWeapon)
  
              -- Get map position
              local map = HUD:GetMinimapPosition()
              local rightX = map.rightX * 100
              local bottomY = map.bottomY * 100
  
              -- Prepare status data
              local statusData = {
                  isTalking = NetworkIsPlayerTalking(self.PlayerId),
                  voiceLevel = self.voiceLevel,
                  radioActive = self.radioActive,
                  hunger = hungerLevel,
                  thirst = thirstLevel,
                  health = GetEntityHealth(self.plyPed) - 100,
                  armor = GetPedArmour(self.plyPed),
                  weapon = self.MovingHud and 'assault-rifle.png' or weaponImage,
                  --maxAmmo = weaponMaxAmmo - weaponClipAmmo,
                  clipAmmo = weaponClipAmmo,
                  rightX = rightX,
                  bottomY = bottomY,
                  oxygen = GetPlayerUnderwaterTimeRemaining(self.PlayerId) * 10
              }
  
              -- Send status data
              SendReactMessage('setStatusData', statusData)
  
              -- Send location data if needed
              if self.carHud or self.compassActive then
                  SendReactMessage('setLocation', self:GetLocation())
              end
              end
          end)
      end,

    CarFuelAlarm = function(self)

        CreateThread(function()
    
          if not self.fuelAlarm then
            self.fuelAlarm = true;
      
            QBCore.Functions.Notify(Lang:t("notify.low_fuel"), "error")
      
            for i=0, 4 do  
              PlaySound(-1, "5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1)
              Wait(250)
            end
      
            Wait(60000)
      
            self.fuelAlarm = false;
          end
    
        end)
        
    
      end,

      GetLocation = function(self)

        local x, y, z = table.unpack(GetEntityCoords(self.plyPed))
        local currentStreetHash, intersectStreetHash = GetStreetNameAtCoord(x, y, z)
        local currentStreetName = GetStreetNameFromHashKey(currentStreetHash)
        local intersectStreetName = GetStreetNameFromHashKey(intersectStreetHash)
        local zone = tostring(GetNameOfZone(x, y, z))
        local area = GetLabelText(zone)
        local playerStreetsLocation = area
    
        if not zone then zone = "UNKNOWN" end;
    
        if intersectStreetName ~= nil and intersectStreetName ~= "" then playerStreetsLocation = currentStreetName .. " | " .. intersectStreetName .. " | [ " .. area .. " ]"
        elseif currentStreetName ~= nil and currentStreetName ~= "" then playerStreetsLocation = currentStreetName .. " | [ " .. area .. " ]" end
    
        local direction = "N"
        local heading = GetEntityHeading(self.plyPed)
        if heading >= 315 or heading < 45 then direction = "N"
        elseif heading >= 45 and heading < 135 then direction = "W"
        elseif heading >=135 and heading < 225 then direction = "S"
        elseif heading >= 225 and heading < 315 then direction = "E" end
    
        return '['..direction..'] '..playerStreetsLocation
    
      end,

      IdleCam = function()
        while true do
          Wait(15000)
          InvalidateIdleCam()
          InvalidateVehicleIdleCam()
        end
      end,

      UpdateHarnessVehicles = function(self, data)self.HarnessVehicles = data; end,
    
      Compass = function(self, toggle)
        self.compassActive = toggle and toggle or not self.compassActive
        SendReactMessage('setCompass', self.compassActive)
      end,
      
      MoveCarHud = function(self, position)

        local newState = position == 'center' and 'center' or 'right';
        SetResourceKvp('carhudpos', newState)
        self.carhudPos = newState
    
      end,

      --[[HideAmmo = function(self)
        while true do
          Wait(0)
          if not self.sniper then
                    HideHudComponentThisFrame(14) 
                end
          DisplayAmmoThisFrame(false)
          self:DrawBars()
        end
      end,]]

      --[[GetHudWeapon = function(self)
    
        local PED_WEAPON_HASH = GetSelectedPedWeapon(PlayerPedId())
    
        for index, data in ipairs(self.WEAPON_LIST) do
    
            if(tonumber(data.WEAPON_HASH) == PED_WEAPON_HASH) then 
    
                return data.IMAGE_NAME
            end
          end
      end,]]

      DrawBars = function(self)

        if self.blackbars then
          DrawRect(0.0, 0.0, 2.0, 0.13, 0, 0, 0, 255)
          DrawRect(0.0, 1.0, 2.0, 0.13, 0, 0, 0, 255)
        end

      end,

    ToggleCarHud = function(self)

        SendReactMessage('setCarHud', self.carHud)
        
    end,

    ToggleBelt = function(self)

        local vehicleExists = DoesEntityExist(self.plyVehicle or 0)
        if not vehicleExists then return end
    
        local speed = (GetPedInVehicleSeat(self.plyVehicle, -1) == PlayerPedId()) and GetEntitySpeed(self.plyVehicle) * 2.236936 or 0
        if speed > 90 then
          QBCore.Functions.Notify(Lang:t("notify.belt_error"), "error")
          return 
        end
    
        self.seatBelt = not self.seatBelt
    
        --TriggerServerEvent('erp-sounds:PlayWithinDistance', 2.0, self.seatBelt and 'seatbelt' or 'seatbeltoff', 0.4)
        QBCore.Functions.Notify(self.seatBelt and Lang:t("notify.belt_enabled") or Lang:t("notify.belt_disabled"), self.seatBelt and 'success' or 'error')
    
      end,

    InfoThread = function(self)

        self.PlayerId = PlayerId()
    
        while true do
          Wait(1000)
          self.plyPed = PlayerPedId()
          self.plyVehicle = GetVehiclePedIsIn(self.plyPed, false)
          SendReactMessage('setPauseMenu', IsPauseMenuActive() or IsScreenFadedOut() or IsScreenFadingOut() or self.blackbars)
        end
    
      end,

    CarThread = function(self)
        self.carhudPos = GetResourceKvpString('carhudpos') or 'center'
    
        while true do
          
          local vehicleExists = DoesEntityExist(self.plyVehicle)
          --
          DisplayRadar(vehicleExists and not self.blackbars and self.isOpen)
    
          if not vehicleExists then
            if self.carHud then
              self.carHud = false;
              self:ToggleCarHud();
            end
            if self.seatBelt then
              self.seatBelt = false;
            end
          else
    
            if not self.carHud then
              self.carHud = true
              self:ToggleCarHud();
            end
      
            local rpm = GetVehicleCurrentRpm(self.plyVehicle)
            if rpm < 0.2 then rpm = 0.2 end
    
            if rpm > 0.2 and not GetIsVehicleEngineRunning(self.plyVehicle) then
              CreateThread(function()
                while GetVehicleCurrentRpm(self.plyVehicle) > 0.2 and not GetIsVehicleEngineRunning(self.plyVehicle) do
                  SetVehicleCurrentRpm(self.plyVehicle, GetVehicleCurrentRpm(self.plyVehicle) - 0.005)
                  Wait(20)
                end
                return
              end)
            end
    
            local currentRpm = (((rpm * 270 - 160.2)) / 80) * 100
    
            local fuel = exports['cdn-fuel']:GetFuel(self.plyVehicle)
            if fuel < 12 then self:CarFuelAlarm() end;
            if(nos == nil) then 
              nos = 0
            end
            SendReactMessage('setVehicleData', {
              speed = math.ceil(GetEntitySpeed(self.plyVehicle) * 2.236936),
              gear = GetVehicleCurrentGear(self.plyVehicle),
              rpm = currentRpm,
              nitrous = nos,
              fuel = fuel,
              engineAlert = GetVehicleEngineHealth(self.plyVehicle) <= 500,
              seatBelt = self.seatBelt,
              position = self.carhudPos,
              visible = not (self.carhudPos == 'center' and self.carControls)
            })
    
            if self.seatBelt then DisableControlAction(0, 75, true) end

          end
    
          
    
          Wait(self.carHud and 25 or 500)
    
        end
      end,
}

RegisterNetEvent('hud:client:ToggleShowSeatbelt', function()
  showSeatbelt = not showSeatbelt
end)

RegisterNetEvent('seatbelt:client:ToggleSeatbelt', function() -- Triggered in smallresources
  seatbeltOn = not seatbeltOn
  HUD:ToggleBelt()
end)

RegisterNetEvent('hud:client:UpdateNitrous', function(_, nitroLevel, bool)
  nos = nitroLevel
  nitroActive = bool
end)

RegisterNetEvent('hud:client:UpdateHarness', function(harnessHp)
  hp = harnessHp
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
  HUD:ToggleNUI(true)
  CreateThread(function()
      Wait(500)
      HUD:InfoThread()
  end)
  
  CreateThread(function()
      Wait(500)
      HUD:CarThread()
  end)
  
  CreateThread(function()
      HUD:IdleCam()
    end)
  
    CreateThread(function()
      Wait(500)
      HUD:StatusThread()
    end)
    
    --[[CreateThread(function()
      HUD:HideAmmo()
    end)]]
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
  
  HUD:ToggleNUI(false)

end)

RegisterNetEvent('pma-voice:setTalkingMode', function(mode)
    HUD.voiceLevel = mode;
end)

AddEventHandler("pma-voice:radioActive", function(data)
  HUD.radioActive = data
end)

RegisterNetEvent('hud:client:UpdateNeeds', function(newHunger, newThirst) -- Triggered in qb-core
  hungerLevel = newHunger
  thirstLevel = newThirst
end)

AddEventHandler('erp_hud:toggleLandHud', function(sentToggle)
    HUD:Compass(sentToggle)
end)

RegisterCommand("togglehud", function(source, args, rawCommand) HUD:ToggleNUI(not HUD.isOpen) end, false)
TriggerEvent('chat:addSuggestion', '/togglehud', 'Toggle the health and driving HUD.')

RegisterCommand("carhud", function(source, args, rawCommand) 

    HUD:MoveCarHud(args[1])

end, false)

TriggerEvent('chat:addSuggestion', '/carhud', 'Toggle the health and driving HUD.', {
    { name="center/right", help="This will move the Car HUD to the center/right."},
})

RegisterCommand("blackbars", function(source, args, rawCommand) 

  HUD.blackbars = not HUD.blackbars 
  TriggerEvent('chat:toggleChat', HUD.blackbars)
  
end, false)

AddEventHandler('onResourceStart', function(resourceName)
  HUD:ToggleNUI(true)
  CreateThread(function()
      Wait(500)
      HUD:InfoThread()
  end)
  
  CreateThread(function()
      Wait(500)
      HUD:CarThread()
  end)
  
  CreateThread(function()
      HUD:IdleCam()
    end)
  
    CreateThread(function()
      Wait(500)
      HUD:StatusThread()
    end)
    
    --[[CreateThread(function()
      HUD:HideAmmo()
    end)]]
end)

