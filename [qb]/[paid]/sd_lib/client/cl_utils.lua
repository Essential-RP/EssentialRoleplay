SD = SD or {}
SD.target = {}
SD.utils = SD.utils or {}

-- Utility Functions
-- Load Animation
SD.utils.LoadAnim = function(animDict)
    RequestAnimDict(animDict); while not HasAnimDictLoaded(animDict) do Wait(1) end
end

-- Load Model
SD.utils.LoadModel = function(model)
	if not HasModelLoaded(model) and IsModelInCdimage(model) then
		RequestModel(model)
	
		while not HasModelLoaded(model) do
			Wait(1)
		end
	end
end

-- Load Ptfx
SD.utils.LoadPtfxAsset = function(dict)
	RequestNamedPtfxAsset(dict); while not HasNamedPtfxAssetLoaded(dict) do Wait(1) end
end

-- Police Alert
SD.utils.PoliceDispatch = function(data)
    data = data or {}
    local playerCoords = GetEntityCoords(PlayerPedId())

    -- Fetch the street name based on the player's current coordinates
    local streetName, crossingRoad = GetStreetNameAtCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    local locationInfo = GetStreetNameFromHashKey(streetName)

        -- Check if crossingRoad is valid and not just an empty or nil value
        if crossingRoad and crossingRoad ~= "" then
            local crossName = GetStreetNameFromHashKey(crossingRoad)
        if crossName and crossName ~= "" then  -- Another check to ensure crossName isn't empty or invalid
            locationInfo = locationInfo .. " & " .. crossName
        end
    end


    local gender = 'Unknown'
    if Framework == 'qb' and Config.Dispatch == 'ps-dispatch' then
        gender = "Male"
        if QBCore and QBCore.Functions.GetPlayerData().charinfo.gender == 1 then 
            gender = "Female" 
        end
    end

    if Config.Dispatch == 'linden_outlawalert' then
        local d = {
            displayCode = data.displayCode,
            description = data.description,
            isImportant = 0,
            recipientList = SD.PoliceJobs,
            length = '10000',
            infoM = 'fa-info-circle',
            info = data.message
        }
        local dispatchData = {dispatchData = d, caller = 'Citizen', coords = playerCoords}
        TriggerServerEvent('wf-alerts:svNotify', dispatchData)

    elseif Config.Dispatch == 'cd_dispatch' then
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = SD.PoliceJobs,
            coords = playerCoords,
            title = data.title,
            message = data.message .. ' on ' .. locationInfo,
            flash = 0,
            unique_id = math.random(999999999),
            sound = 1,
            blip = {
                sprite = data.sprite,
                scale = data.scale,
                colour = data.colour,
                flashes = false,
                text = data.blipText,
                time = 5,
                radius = 0,
            }
        })

    elseif Config.Dispatch == 'ps-dispatch' then
        TriggerServerEvent("dispatch:server:notify",{
            dispatchcodename = data.dispatchcodename,
            dispatchCode = data.displayCode,
            firstStreet = locationInfo,
            gender = gender,
            model = nil,
            plate = nil,
            priority = 2,
            firstColor = nil,
            automaticGunfire = false,
            origin = {
                x = playerCoords.x,
                y = playerCoords.y,
                z = playerCoords.z
            },
            dispatchMessage = data.description,
            job = SD.PoliceJobs
        })
    elseif Config.Dispatch == 'qs-dispatch' then
        TriggerServerEvent('qs-dispatch:server:CreateDiapatchCall', {
            job = SD.PoliceJobs,
            callLocation = playerCoords,
            callCode = { code = data.displayCode, snippet = data.description },
            message = data.message .. ' on ' .. locationInfo,
            flashes = false,
            blip = {
                sprite = data.sprite,
                scale = data.scale,
                colour = data.colour,
                flashes = true,
                text = data.customBlipText,
                time = (6 * 60 * 1000),
            }
        })

    elseif Config.Dispatch == 'core_dispatch' then
        TriggerServerEvent("core_dispatch:addCall",
            data.displayCode,
            data.description,
            {{icon = "fa-info-circle", info = data.message}},
            {playerCoords.x, playerCoords.y, playerCoords.z},
            SD.PoliceJobs,
            10000,
            data.sprite,
            data.colour
        )

    elseif Config.Dispatch == 'custom' then
        -- Add your custom dispatch system here
    elseif Config.Dispatch == '' then
        -- If no Dispatch system is selected, do nothing with the data.
    else
        -- No dispatch system was found
        print('No dispatch system was identified - please update your Config.Dispatch')
    end
end

-- Target functions
-- Target Initialization
local oxTarget = GetResourceState(Config.OXTarget)

local targets = Config.Targets
if oxTarget == 'started' then
    SD.targetName = 'qtarget'
else
    for i=1, #targets do
        if GetResourceState(targets[i]) == 'started' then
            SD.targetName = targets[i]
            break
        end
    end
end

if not SD.targetName then return end

-- Add Box Zone
SD.target.AddBoxZone = function(identifier, coords, width, length, data, debugPoly)
    exports[SD.targetName]:AddBoxZone(identifier, coords, width, length, {
        name = identifier,
        heading = data.heading,
        debugPoly = debugPoly,
        useZ = true,
    }, {
        options = data.options,
        distance = data.distance,
    })
end

-- Add Circle Zone
SD.target.AddCircleZone = function(identifier, coords, radius, data, debugPoly)
    exports[SD.targetName]:AddCircleZone(identifier, coords, radius, {
        name = identifier,
        useZ = true,
        debugPoly = debugPoly,
    }, {
        options = data.options,
        distance = data.distance,
    })
end

-- Add Target Entity
SD.target.AddTargetEntity = function(netId, data) 
    exports[SD.targetName]:AddTargetEntity(netId, {
        options = data.options,
        distance = data.distance,
    })
end

-- Add Target model
SD.target.AddTargetModel = function(models, data)
    exports[SD.targetName]:AddTargetModel(models, {
        options = data.options,
        distance = data.distance,
    })
end

-- Remove a target entity
SD.target.RemoveTargetEntity = function(entity)
    exports[SD.targetName]:RemoveTargetEntity(entity)
end

-- Remove Zone
SD.target.RemoveZone = function(identifier)
    exports[SD.targetName]:RemoveZone(identifier)
end