RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() GetXenonColour() end)
local xenonColour = {}

function GetXenonColour()
    local p = promise.new()
    QBCore.Functions.TriggerCallback('jim-mechanic:GetXenonColour', function(cb) p:resolve(cb) end)
    newxenonColour = Citizen.Await(p)
    for k, v in pairs(newxenonColour) do xenonColour[k] = v end
    for k, v in pairs(xenonColour) do
		local entity = NetworkDoesEntityExistWithNetworkId(k)
        if entity then
            if IsEntityAVehicle(k) then
                if k ~= 0 or DoesEntityExist(k) then
					SetVehicleXenonLightsCustomColor(k, v[1], v[2], v[3])
				end
            end
        end
    end
end
--========================================================== Headlights
RegisterNetEvent('jim-mechanic:client:applyXenons', function() local Ped = PlayerPedId() local item = QBCore.Shared.Items["headlights"]
	if not Checks() then return end
	local vehicle = vehChecks() local above = isVehicleLift(vehicle)
	local emote = { anim = above and "idle_b" or "machinic_loop_mechandplayer", dict = above and "amb@prop_human_movie_bulb@idle_a" or "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", flag = above and 1 or 8 }
	local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 0.5, 1.0), 0.0, 0.0, 0.0, 60.00, false, 0) PointCamAtCoord(cam, GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 3.0, 0.5))
	if DoesEntityExist(vehicle) then
		local distanceToL = #(GetEntityCoords(Ped) - GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "headlight_l")))
		local distanceToR = #(GetEntityCoords(Ped) - GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "headlight_r")))
		local currentEngine = GetVehicleMod(vehicle, 11)
		if GetNumVehicleMods(vehicle,11) == 0 then triggerNotify(nil, Loc[Config.Lan]["common"].noOptions, "error") return end
		if above or (distanceToL <= 1 or distanceToR <= 1) then
			if IsToggleModOn(vehicle, 22) then triggerNotify(nil, Loc[Config.Lan]["common"].already, "error")
			else
				lookVeh(vehicle)
				if progressBar({label = Loc[Config.Lan]["common"].installing..item.label, time = math.random(3000,7000), cancel = true, anim = emote.anim, dict = emote.dict, flag = emote.flag, icon = "headlights", cam = cam }) then SetVehicleModKit(vehicle, 0)
					if IsToggleModOn(vehicle, 22) then TriggerServerEvent("jim-mechanic:server:DupeWarn", "headlights") emptyHands(Ped) return end
					if checkToggleVehicleMod(vehicle, 22, true) then
						qblog("`"..item.label.." - headlights` installed [**"..trim(GetVehicleNumberPlateText(vehicle)).."**]")
						checkSetVehicleMod(vehicle, 11, currentEngine) -- Attempt to keep the engine as its current level after adding xenons, weird fucking gta game engine
						CreateThread(function()
							SetVehicleLights(vehicle, 2)
							Wait(1000)
							SetVehicleLights(vehicle, 1)
							Wait(200)
							SetVehicleLights(vehicle, 0)
						end)
						updateCar(vehicle)
						toggleItem(false, "headlights", 1)
						triggerNotify(nil, Loc[Config.Lan]["common"].installing.." "..item.label, "success")
					end
				else
					triggerNotify(nil, item.label..Loc[Config.Lan]["common"].instfail, "error")
				end
				emptyHands(Ped)
			end
		else triggerNotify(nil, Loc[Config.Lan]["common"].closer, "error") end
	end
end)

RegisterNetEvent('jim-mechanic:client:giveXenon', function() local Ped = PlayerPedId()  local item = QBCore.Shared.Items["headlights"]
	if not Checks() then return end
	local vehicle = vehChecks() above = isVehicleLift(vehicle)
	local emote = { anim = above and "idle_b" or "machinic_loop_mechandplayer", dict = above and "amb@prop_human_movie_bulb@idle_a" or "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", flag = above and 1 or 8 }
	if DoesEntityExist(vehicle) then
		local distanceToL = #(GetEntityCoords(Ped) - GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "headlight_l")))
		local distanceToR = #(GetEntityCoords(Ped) - GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "headlight_r")))
		if above or (distanceToR <= 1 or distanceToL <= 1) then
			lookVeh(vehicle)
			if progressBar({label = Loc[Config.Lan]["common"].removing..item.label, time = math.random(3000,7000), cancel = true, anim = emote.anim, dict = emote.dict, flag = emote.flag, icon = "headlights"}) then SetVehicleModKit(vehicle, 0)
				if not IsToggleModOn(vehicle, 22) then TriggerServerEvent("jim-mechanic:server:DupeWarn", "headlights") emptyHands(playerPed) return end
				if checkToggleVehicleMod(vehicle, 22, false) then
					qblog("`"..item.label.." - headlights` removed [**"..trim(GetVehicleNumberPlateText(vehicle)).."**]")
					SetVehicleXenonLightsColor(vehicle, 0)
					updateCar(vehicle)
					toggleItem(true, "headlights", 1)
					triggerNotify(nil, item.label.." "..Loc[Config.Lan]["common"].removed, "success")
				end
			else
				triggerNotify(nil, item.label..Loc[Config.Lan]["common"].remfail, "error")
			end
			emptyHands(Ped)
		else
			triggerNotify(nil, Loc[Config.Lan]["common"].closer, "error")
		end
	end
end)

RegisterNetEvent('jim-mechanic:client:neonMenu', function() local NeonMenu, bike, Ped = {}, false, PlayerPedId() -- Start
	if not outCar() then return end
	local vehicle = GetVehiclePedIsIn(Ped) pushVehicle(vehicle)
	if lockedCar(vehicle) then return end
	if Config.Main.isVehicleOwned and not IsVehicleOwned(trim(GetVehicleNumberPlateText(vehicle))) then triggerNotify(nil, Loc[Config.Lan]["common"].owned, "error") return end
	if IsThisModelABike(GetEntityModel(vehicle)) or IsThisModelAQuadbike(GetEntityModel(vehicle)) then bike = true end
	if bike and not IsToggleModOn(vehicle, 22) then triggerNotify(nil, Loc[Config.Lan]["common"].noOptions, "error") return end
	if Config.System.Menu == "qb" then
		NeonMenu[#NeonMenu+1] = { icon = "underglow_controller", isMenuHeader = true, header = Loc[Config.Lan]["xenons"].neonheader1, }
		NeonMenu[#NeonMenu+1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan]["common"].close }
	end
	if not bike then
		NeonMenu[#NeonMenu + 1] = { icon = "underglow_controller",
		header = Loc[Config.Lan]["xenons"].neonheader2, txt = "", params = { event = "jim-mechanic:client:neonLightsMenu", args = { bike = bike, vehicle = vehicle } },
		title = Loc[Config.Lan]["xenons"].neonheader2,  event = "jim-mechanic:client:neonLightsMenu", args = { bike = bike, vehicle = vehicle } }
	end
	if IsToggleModOn(vehicle, 22) then
		NeonMenu[#NeonMenu + 1] = { icon = "underglow_controller",
			header = Loc[Config.Lan]["xenons"].neonheader4, txt = "", params = { event = "jim-mechanic:client:xenonMenu", args = { bike = bike, vehicle = vehicle } },
			title = Loc[Config.Lan]["xenons"].neonheader4, event = "jim-mechanic:client:xenonMenu", args = { bike = bike, vehicle = vehicle } }
	end
	if Config.System.Menu == "ox" then	exports.ox_lib:registerContext({id = 'Menu', title = Loc[Config.Lan]["xenons"].neonheader1, position = 'top-right', options = NeonMenu }) exports.ox_lib:showContext("Menu")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(NeonMenu) end
end)

RegisterNetEvent('jim-mechanic:client:neonLightsMenu', function(data) local NeonMenu = {} -- Neon or Xenon
	if not outCar() then return end
	if Config.System.Menu == "qb" then
		NeonMenu[#NeonMenu+1] = { icon = "underglow_controller", isMenuHeader = true, header = Loc[Config.Lan]["xenons"].neonheader2, }
	end
	NeonMenu[#NeonMenu+1] = { icon = "fas fa-circle-arrow-left",
		header = "",  txt = Loc[Config.Lan]["common"].ret, params = { event = "jim-mechanic:client:neonMenu", },
		title = Loc[Config.Lan]["common"].ret, event = "jim-mechanic:client:neonMenu", }
	if not data.bike then
		NeonMenu[#NeonMenu + 1] = {
			header = Loc[Config.Lan]["xenons"].neonheader2, txt = "", params = { event = "jim-mechanic:client:neonToggleMenu", args = { bike = data.bike, vehicle = data.vehicle } },
			title = Loc[Config.Lan]["xenons"].neonheader2, event = "jim-mechanic:client:neonToggleMenu", args = { bike = data.bike, vehicle = data.vehicle } }
		NeonMenu[#NeonMenu + 1] = {
			header = Loc[Config.Lan]["xenons"].neonheader3, txt = "", params = { event = "jim-mechanic:client:neonColorMenu", args = { bike = data.bike, vehicle = data.vehicle } },
			title = Loc[Config.Lan]["xenons"].neonheader3, event = "jim-mechanic:client:neonColorMenu", args = { bike = data.bike, vehicle = data.vehicle } }
	end
	if Config.System.Menu == "ox" then	exports.ox_lib:registerContext({id = 'Menu', title = Loc[Config.Lan]["xenons"].neonheader2, position = 'top-right', options = NeonMenu }) exports.ox_lib:showContext("Menu")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(NeonMenu) end
end)

RegisterNetEvent('jim-mechanic:client:neonToggleMenu', function(data) -- Underglow Toggles
	local NeonMenu = {}
	local buttons = { { id = -1, head = Loc[Config.Lan]["xenons"].toggle }, { id = 2, head = Loc[Config.Lan]["xenons"].front }, { id = 1, head = Loc[Config.Lan]["xenons"].right }, { id = 3, head = Loc[Config.Lan]["xenons"].back }, { id = 0, head = Loc[Config.Lan]["xenons"].left }}
	if Config.System.Menu == "qb" then
		NeonMenu[#NeonMenu+1] = { icon = "underglow_controller", header = Loc[Config.Lan]["xenons"].neonheader3, txt = Loc[Config.Lan]["xenons"].neontxt1, isMenuHeader = true }
	end
	NeonMenu[#NeonMenu+1] = { icon = "fas fa-circle-arrow-left",
		header = "", txt = Loc[Config.Lan]["common"].ret, params = { event = "jim-mechanic:client:neonLightsMenu", args = data },
		title = Loc[Config.Lan]["common"].ret, event = "jim-mechanic:client:neonLightsMenu", args = data }
	for i = 1, #buttons do
		NeonMenu[#NeonMenu+1] = { icon = buttons[i].id ~= -1 and (IsVehicleNeonLightEnabled(data.vehicle, buttons[i].id) ~= false and "fas fa-check" or "fas fa-x") or nil,
			header = buttons[i].head, params = { event = "jim-mechanic:client:applyNeonPostion", args = { vehicle = data.vehicle, bike = data.bike, id = buttons[i].id, } },
			title = buttons[i].head, event = "jim-mechanic:client:applyNeonPostion", args = { vehicle = data.vehicle, bike = data.bike, id = buttons[i].id, },
		}
    end
	if Config.System.Menu == "ox" then	exports.ox_lib:registerContext({id = 'Menu', title = Loc[Config.Lan]["xenons"].neonheader3, position = 'top-right', options = NeonMenu }) exports.ox_lib:showContext("Menu")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(NeonMenu) end
end)

RegisterNetEvent('jim-mechanic:client:RGBMenu', function(data) -- Custom Underglow RGB
	local dialog = {}
	local r,g,b = GetVehicleNeonLightsColour(data.vehicle)
	local custom = nil
	if data.xenon then custom, r,g,b = GetVehicleXenonLightsCustomColor(data.vehicle) end
	if Config.System.Menu == "ox" then
		dialog = exports.ox_lib:inputDialog(Loc[Config.Lan]["xenons"].customheader, {
			{ type = 'color', label = "RGB:", format = "rgb", default = "rgb("..r..", "..g..", "..b..")" },
		})
		if dialog then
			dialog[1] = convertOxRGB(dialog[1])
			r, g, b = tonumber(dialog[1][1]) or r, tonumber(dialog[1][2]) or g, tonumber(dialog[1][3]) or b
		end
	else
		dialog = exports['qb-input']:ShowInput({
		header = Loc[Config.Lan]["xenons"].customheader,
		submitText = Loc[Config.Lan]["xenons"].customconfirm,
		inputs = {
			{ type = 'number', name = 'Red', text = 'R' },
			{ type = 'number', name = 'Green', text = 'G' },
			{ type = 'number', name = 'Blue', text = 'B' } } })
		if dialog then
			r, g, b = tonumber(dialog.Red or r), tonumber(dialog.Green or g), tonumber(dialog.Blue or b)
		end
	end
	if r > 255 then r = 255 end
	if g > 255 then g = 255 end
	if b > 255 then b = 255 end
	if data.xenon then
		TriggerServerEvent('jim-mechanic:server:ChangeXenonColour', VehToNet(data.vehicle), {r, g, b})
		SetVehicleXenonLightsColor(data.vehicle, -1)
		updateCar(data.vehicle)
		Wait(100)
		TriggerEvent('jim-mechanic:client:xenonMenu', data)
	else
		TriggerEvent('jim-mechanic:client:applyNeonColor', { vehicle = data.vehicle, bike = data.bike, r = r, g = g , b = b })
	end
end)

RegisterNetEvent('jim-mechanic:client:neonColorMenu', function(data) -- Neon Colour Picker
	local r, g, b = GetVehicleNeonLightsColour(data.vehicle)
	local NeonMenu = {}
	local desc = Loc[Config.Lan]["xenons"].neontxt2..br.."R:"..r.." G:"..g.." B:"..b.."<span style='color:#"..rgbToHex(GetVehicleNeonLightsColour(data.vehicle)):upper().."; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black, 0em 0em 0.5em white, 0em 0em 0.5em white'> ⯀ </span>"
	if Config.System.Menu == "ox" then
		desc = Loc[Config.Lan]["xenons"].neontxt2..br.."R:"..r.." G:"..g.." B:"..b
	end
	NeonMenu[#NeonMenu + 1] = { icon = "underglow_controller", header = Loc[Config.Lan]["xenons"].neonheader3, txt = desc,
			title = desc, isMenuHeader = true, disabled = (Config.System.Menu == "ox" ) }
	NeonMenu[#NeonMenu + 1] = { icon = "fas fa-circle-arrow-left",
		header = "", txt = Loc[Config.Lan]["common"].ret, params = { event = "jim-mechanic:client:neonLightsMenu", args = data },
		title = Loc[Config.Lan]["common"].ret, event = "jim-mechanic:client:neonLightsMenu", args = data,
	}
	NeonMenu[#NeonMenu + 1] = {
		header = Loc[Config.Lan]["xenons"].customheader, txt = "", params = { event = "jim-mechanic:client:RGBMenu", args = data },
		title = Loc[Config.Lan]["xenons"].customheader, event = "jim-mechanic:client:RGBMenu", args = data,
	}
	for k, v in pairs(Loc[Config.Lan].vehicleNeonOptions) do
		local icon = "" local disabled = false
		if r == v.R and g == v.G and b == v.B then installed = Loc[Config.Lan]["common"].current icon = "fas fa-check" disabled = true else installed = "" end
		NeonMenu[#NeonMenu + 1] = { icon = icon, isMenuHeader = disabled, disabled = (Config.System.Menu == "ox" and disabled),
			header = v.name, txt = installed, params = { event = 'jim-mechanic:client:applyNeonColor', args = { vehicle = data.vehicle, bike = data.bike, r = v.R, g = v.G, b = v.B }  },
			title = v.name, description = installed, event = 'jim-mechanic:client:applyNeonColor', args = { vehicle = data.vehicle, bike = data.bike, r = v.R, g = v.G, b = v.B },
		}
	end
	if Config.System.Menu == "ox" then exports.ox_lib:registerContext({id = 'Menu', title = Loc[Config.Lan]["xenons"].neonheader3, position = 'top-right', options = NeonMenu }) exports.ox_lib:showContext("Menu")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(NeonMenu) end
end)

RegisterNetEvent('jim-mechanic:client:xenonMenu', function(data) -- Xenon Colour Selection
	local stockinstall, stockicon = ""
	local XenonMenu = {}
	local custom, r, g, b = GetVehicleXenonLightsCustomColor(data.vehicle)
	local desc = ""
	data.xenon = true
	if custom then
		desc = Loc[Config.Lan]["xenons"].xenontxt..br.."R:"..r.." G:"..g.." B:"..b.."<span style='color:#"..rgbToHex(r, g, b):upper().."; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black, 0em 0em 0.5em white, 0em 0em 0.5em white'> ⯀ </span>"
		if Config.System.Menu == "ox" then
			desc = Loc[Config.Lan]["xenons"].xenontxt..br.."R:"..r.." G:"..g.." B:"..b
		end
	else stockinstall = Loc[Config.Lan]["common"].current stockicon = "fas fa-check" end
	if not IsToggleModOn(data.vehicle, 22) then triggerNotify(nil, Loc[Config.Lan]["xenons"].notinstall, "error") else
		XenonMenu[#XenonMenu + 1] = { icon = "underglow_controller", header = Loc[Config.Lan]["xenons"].xenonheader3, txt = desc,
				title = desc, isMenuHeader = true, disabled = (Config.System.Menu == "ox" ) }
		XenonMenu[#XenonMenu + 1] = { icon = "fas fa-circle-arrow-left",
			header = "", txt = Loc[Config.Lan]["common"].ret, params = { event = "jim-mechanic:client:neonMenu", args = data },
			title = Loc[Config.Lan]["common"].ret, event = "jim-mechanic:client:neonMenu", args = data,
		}
		XenonMenu[#XenonMenu + 1] = {
			header = Loc[Config.Lan]["xenons"].customheader, txt = "", params = { event = "jim-mechanic:client:RGBMenu", args = data },
			title = Loc[Config.Lan]["xenons"].customheader, event = "jim-mechanic:client:RGBMenu", args = data,
		}
		for k, v in pairs(Loc[Config.Lan].vehicleNeonOptions) do
			local icon = "" local disabled = false
			if r == v.R and g == v.G and b == v.B then installed = Loc[Config.Lan]["common"].current icon = "fas fa-check" disabled = true else installed = "" end
		XenonMenu[#XenonMenu + 1] = { icon = icon, isMenuHeader = disabled, disabled = (Config.System.Menu == "ox" and disabled),
				header = v.name, txt = installed, params = { event = 'jim-mechanic:client:applyXenonColor', args = { vehicle = data.vehicle, bike = data.bike, R = v.R, G = v.G, B = v.B }  },
				title = v.name, description = installed, event = 'jim-mechanic:client:applyXenonColor', args = { vehicle = data.vehicle, bike = data.bike, R = v.R, G = v.G, B = v.B },
			}
		end
		if Config.System.Menu == "ox" then exports.ox_lib:registerContext({id = 'Menu', title = Loc[Config.Lan]["xenons"].xenonheader, position = 'top-right', options = XenonMenu }) exports.ox_lib:showContext("Menu")
		elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(XenonMenu) end

	end
end)

RegisterNetEvent('jim-mechanic:client:applyNeonPostion', function(data) -- Toggle Underglow Lights
	if GetIsVehicleEngineRunning(data.vehicle) then
		SetVehicleEngineOn(data.vehicle, true, true)
	end
	if data.id == -1 then
		if not IsVehicleNeonLightEnabled(data.vehicle, 2) or not IsVehicleNeonLightEnabled(data.vehicle, 1) or not IsVehicleNeonLightEnabled(data.vehicle, 3) or not IsVehicleNeonLightEnabled(data.vehicle, 0) then
			for i = 0, 4 do	SetVehicleNeonLightEnabled(data.vehicle, i, true) Wait(40) end
		else
			for i = 0, 4 do SetVehicleNeonLightEnabled(data.vehicle, i, false) Wait(40) end
		end
	else if IsVehicleNeonLightEnabled(data.vehicle, data.id) then SetVehicleNeonLightEnabled(data.vehicle, data.id, false) else SetVehicleNeonLightEnabled(data.vehicle, data.id, true) end
    end
	updateCar(data.vehicle)
    TriggerEvent("jim-mechanic:client:neonToggleMenu", data)
end)

RegisterNetEvent('jim-mechanic:client:applyNeonColor', function(data) -- Apple Underglow Colours
	if GetIsVehicleEngineRunning(data.vehicle) then
		SetVehicleEngineOn(data.vehicle, true, true)
	end
	SetVehicleNeonLightsColour(data.vehicle, data.r, data.g, data.b)
	updateCar(data.vehicle)
	TriggerEvent("jim-mechanic:client:neonColorMenu", data)
end)

RegisterNetEvent('jim-mechanic:client:applyXenonColor', function(data) -- Apple Xenon Colours
	if GetIsVehicleEngineRunning(data.vehicle) then
		SetVehicleEngineOn(data.vehicle, true, true)
	end
	if data.stock then
		ClearVehicleXenonLightsCustomColor(data.vehicle)
		SetVehicleXenonLightsColor(data.vehicle, -1)
		TriggerServerEvent('jim-mechanic:server:ChangeXenonStock', VehToNet(data.vehicle))
	else
		SetVehicleXenonLightsColor(data.vehicle, -1)
		SetVehicleXenonLightsCustomColor(data.vehicle, data.R, data.G, data.B)
		TriggerServerEvent('jim-mechanic:server:ChangeXenonColour', VehToNet(data.vehicle), { data.R, data.G, data.B })
	end
	updateCar(data.vehicle)
	Wait(100)
    TriggerEvent("jim-mechanic:client:xenonMenu", data)
end)

RegisterNetEvent('jim-mechanic:client:ChangeXenonColour', function(netId, newColour)
    xenonColour[netId] = newColour
    for k, v in pairs(xenonColour) do
        if NetworkDoesEntityExistWithNetworkId(k) then
            if k ~= 0 and DoesEntityExist(NetToVeh(k)) and IsEntityAVehicle(NetToVeh(k)) then
                SetVehicleXenonLightsCustomColor(NetToVeh(k), v[1], v[2], v[3])
                if Config.System.Debug then print("^5Debug^7: ^2Recieving new ^3Xenon Colour ^7[^6"..tostring(NetToVeh(k)).."^7] = { ^2RBG ^7= ^6"..v[1].."^7, ^6"..v[2].."^7, ^6"..v[3].." ^7}") end
            end
        end
    end
end)

RegisterNetEvent('jim-mechanic:client:ChangeXenonStock', function(netId) local netVeh = NetToVeh(netId)
	if not NetworkDoesEntityExistWithNetworkId(netid) then return end
	xenonColour[netId] = nil
	if DoesEntityExist(netVeh) and IsEntityAVehicle(netVeh) then
		ClearVehicleXenonLightsCustomColor(netVeh)
		SetVehicleXenonLightsColor(netVeh, -1)
		if Config.System.Debug then print("^5Debug^7: ^2Clearing ^3Xenon Colour for vehicle ^7[^6"..tostring(netVeh).."^7]") end
		xenonColour[netId] = nil
	end
end)

CreateThread(function()
    while true do
        for netId, v in pairs(xenonColour) do
            if NetworkDoesEntityExistWithNetworkId(netId) then
				local netEntity = NetToVeh(netId)
                if netEntity ~= 0 and DoesEntityExist(netEntity) and IsEntityAVehicle(netEntity) then
                    if Config.System.Debug then print("^5Debug^7: ^2Ensuring ^3Xenon Colour^7[^6"..tostring(netEntity).."^7] = { ^2RBG ^7= ^6"..v[1].."^7, ^6"..v[2].."^7, ^6"..v[3].." ^7}") end
                    SetVehicleXenonLightsCustomColor(netEntity, v[1], v[2], v[3])
				end
            end
        end
        Wait(20000)
    end
end)